part of 'random_comics_cubit.dart';

// enum RandomComicsStatus { loading, success, empty, error }

// extension HomeStatusX on RandomComicsStatus? {
//   bool get isLoading => this == RandomComicsStatus.loading;
//   bool get isSuccess => this == RandomComicsStatus.success;
//   bool get isEmpty => this == RandomComicsStatus.empty;
//   bool get isError => this == RandomComicsStatus.error;
// }

// class RandomComicsState extends Equatable {
//   final RandomComicsStatus status;
//   final Comics? comics;

//   const RandomComicsState({
//     required this.status,
//     this.comics,
//   });

//   @override
//   List<Object?> get props => [status, comics];

//   RandomComicsState copyWith({
//     RandomComicsStatus? status,
//     Comics? comics,
//   }) {
//     return RandomComicsState(
//       status: status ?? this.status,
//       comics: comics ?? this.comics,
//     );
//   }
// }
