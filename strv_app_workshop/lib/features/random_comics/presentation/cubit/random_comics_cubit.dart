part 'random_comics_state.dart';

// const int MOST_RECENT_COMICS_ID = 2400;

// class RandomComicsCubit extends Cubit<RandomComicsState> {
  // var random = new Random.secure();

  // RandomComicsCubit() : super(const RandomComicsState(status: RandomComicsStatus.loading)) {
    // _fetchData();
  // }

  // Future<void> _fetchData() async {
  //   emit(state.copyWith(status: RandomComicsStatus.loading));

  //   try {
  //     int randomComicsId = random.nextInt(MOST_RECENT_COMICS_ID - 1) + 1;
  //     final comics = await GetComicsUsecase().execute(randomComicsId);

  //     emit(state.copyWith(status: RandomComicsStatus.success, comics: comics));
  //   } catch (exception) {
  //     Fimber.e(exception.toString());
  //     emit(state.copyWith(status: RandomComicsStatus.error));
  //   }
  // }

  // Future<void> refreshData() async {
  //   Fimber.i("Refresh Random Data!");
  //   _fetchData();
  // }
// }
