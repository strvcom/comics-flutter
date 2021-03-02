part 'random_state.dart';

// class RandomCubit extends Cubit<RandomState> {
//   RandomCubit() : super(const RandomState()) {
//     _fetchData();
//   }

//   Future<void> _fetchData() async {
//     final mostRecentComicsId = await _getMostRecentComicsId();
//     Fimber.d("Most recent Comics ID: $mostRecentComicsId");
//     emit(state.copyWith(status: RandomStatus.loading));

//     try {
//       var rng = new Random.secure();
//       final comics = await getIt<GetComicsUsecase>().execute(rng.nextInt(mostRecentComicsId));

//       emit(state.copyWith(
//         status: RandomStatus.success,
//         comics: comics,
//       ));
//     } catch (exception) {
//       Fimber.e(exception.toString());
//       emit(state.copyWith(status: RandomStatus.error));
//     }
//   }

//   Future<void> refreshData() async {
//     Fimber.i("Refresh Home Feed Data!");
//     _fetchData();
//   }

//   Future<int> _getMostRecentComicsId() async {
//     final Preferences prefs = getIt<Preferences>();
//     return prefs[Prefs.LAST_COMICS_ID] ?? 2200;
//   }
// }
