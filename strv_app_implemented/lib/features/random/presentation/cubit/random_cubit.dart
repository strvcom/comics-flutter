import 'dart:async';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fimber/fimber.dart';
import 'package:strv_app_implemented/features/random/data/models/comics.dart';
import 'package:strv_app_implemented/features/random/data/usecases/get_comics_usecase.dart';

part 'random_state.dart';

const int MOST_RECENT_COMICS_ID = 2200;

class RandomCubit extends Cubit<RandomState> {
  var random = new Random.secure();

  RandomCubit() : super(const RandomState(status: RandomStatus.loading)) {
    _fetchData();
  }

  Future<void> _fetchData() async {
    emit(state.copyWith(status: RandomStatus.loading));

    try {
      int randomComicsId = random.nextInt(MOST_RECENT_COMICS_ID - 1) + 1;
      final comics = await GetComicsUsecase().execute(randomComicsId);

      emit(state.copyWith(status: RandomStatus.success, comics: comics));
    } catch (exception) {
      Fimber.e(exception.toString());
      emit(state.copyWith(status: RandomStatus.error));
    }
  }

  Future<void> refreshData() async {
    Fimber.i("Refresh Random Data!");
    _fetchData();
  }
}
