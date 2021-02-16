import 'dart:async';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:strv_app_implemented/core/di/injection.dart';
import 'package:strv_app_implemented/features/home/data/models/comics.dart';
import 'package:strv_app_implemented/features/home/domain/usecases/get_comics_usecase.dart';
import 'package:strv_app_implemented/features/home/domain/usecases/get_newest_comics_usecase.dart';
import 'package:strv_app_implemented/widgets/shimmering_paging_controller.dart';

part 'home_feed_state.dart';
part 'home_feed_event.dart';

class HomeFeedCubit extends Cubit<HomeFeedState> {
  static const PAGE_SIZE = 6;
  int mostRecentComicsId;

  final ShimmeringPagingController<int, Comics> _comicsPagingController =
      ShimmeringPagingController(firstPageKey: 1, pageSize: PAGE_SIZE);

  HomeFeedCubit() : super(const HomeFeedState()) {
    _comicsPagingController.addPageRequestListener((pageIndex) {
      if (state.status.isSuccess) _fetchData(pageIndex);
    });

    _fetchData(1);
  }

  Future<void> _fetchData(int pageIndex) async {
    _comicsPagingController.addLoadingShimmers();
    emit(state.copyWith(status: HomeFeedStatus.loading, comicsPagingController: _comicsPagingController));

    try {
      if (mostRecentComicsId == null) {
        // We do not know how many commics there is. For this reason we need to fetch the most recent comics.
        final comics = await getIt<GetNewestComicsUsecase>().execute();
        mostRecentComicsId = comics.id;
      }

      // We will generate [PAGE_SIZE] random comics numbers that we are going to fetch.
      var rng = new Random.secure();
      List<Comics> newComicsList = [];
      for (var i = 0; i < PAGE_SIZE; i++) {
        newComicsList.add(await getIt<GetComicsUsecase>().execute(rng.nextInt(mostRecentComicsId)));
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
    mostRecentComicsId = null;
    _comicsPagingController.refreshKeepingData();
  }
}
