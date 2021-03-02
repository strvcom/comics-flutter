import 'dart:async';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fimber/fimber.dart';
import 'package:hive/hive.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:strv_app_implemented/core/di/injection.dart';
import 'package:strv_app_implemented/core/utils/preferences.dart';
import 'package:strv_app_implemented/features/home/data/models/comics.dart';
import 'package:strv_app_implemented/features/home/data/usecases/get_comics_usecase.dart';
import 'package:strv_app_implemented/features/home/data/usecases/get_newest_comics_usecase.dart';
import 'package:strv_app_implemented/widgets/shimmering_paging_controller.dart';

part 'home_feed_state.dart';

class HomeFeedCubit extends Cubit<HomeFeedState> {
  static const PAGE_SIZE = 8;
  int _mostRecentComicsId;
  final ShimmeringPagingController<int, Comics> _comicsPagingController = ShimmeringPagingController(
    firstPageKey: 1,
    pageSize: PAGE_SIZE,
  );

  HomeFeedCubit() : super(const HomeFeedState()) {
    // Load more functionality
    _comicsPagingController.addPageRequestListener((pageIndex) {
      if (state.status.isSuccess) _fetchData(pageIndex);
    });

    // Fetch first page on init
    _fetchData(_comicsPagingController.firstPageKey);
  }

  Future<void> _fetchData(int pageIndex) async {
    // Only in case we want to have Shimmering loading items
    _comicsPagingController.addLoadingShimmers();

    // Set Loading state at the beginning
    emit(state.copyWith(status: HomeFeedStatus.loading, comicsPagingController: _comicsPagingController));

    try {
      if (_mostRecentComicsId == null) {
        // We do not know how many commics there is. For this reason we need to fetch the most recent comics.
        final comics = await getIt<GetNewestComicsUsecase>().execute();
        _mostRecentComicsId = comics.id;

        // Save the most recent comics ID into preferences for later use
        final Preferences prefs = getIt<Preferences>();
        prefs[Prefs.LAST_COMICS_ID] = _mostRecentComicsId;
      }

      // We will generate [PAGE_SIZE] random comics numbers that we are going to fetch.
      var box = await Hive.openBox('comics_box');
      var rng = new Random.secure();
      List<Comics> newComicsList = [];

      for (var i = 0; i < PAGE_SIZE; i++) {
        // We need to change the random generation logic a little bit as the comics starts from ID 1
        int randomID = rng.nextInt(_mostRecentComicsId - 1) + 1;

        // First, try to get the comics from local storage
        Comics item = box.get(randomID);

        // When we do not have the comics in local storage, download it and store it.
        if (item == null) {
          item = await getIt<GetComicsUsecase>().execute(randomID);
          box.put(randomID, item);
        }

        newComicsList.add(item);
      }

      // We could check for the last page here. But, we are generating neverending random list.
      // Because of that, we do not have usage for that right now.
      // if (isLastPageLoaded) {
      //   _comicsPagingController.appendLastPageRemovingShimmers(newItems);
      // } else {
      _comicsPagingController.appendPageRemovingShimmers(newComicsList, pageIndex + 1);
      // }

      emit(state.copyWith(
        status: HomeFeedStatus.success,
        comicsPagingController: _comicsPagingController,
      ));
    } catch (exception) {
      Fimber.e(exception.toString());
      emit(state.copyWith(status: HomeFeedStatus.error));
    }
  }

  Future<void> refreshData() async {
    Fimber.i("Refresh Home Feed Data!");
    _mostRecentComicsId = null;
    _comicsPagingController.refresh();
  }
}
