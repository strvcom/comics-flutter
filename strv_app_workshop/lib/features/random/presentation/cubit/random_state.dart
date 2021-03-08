part of 'random_cubit.dart';

enum RandomStatus { loading, success, empty, error }

extension HomeStatusX on RandomStatus {
  bool get isLoading => this == RandomStatus.loading;
  bool get isSuccess => this == RandomStatus.success;
  bool get isEmpty => this == RandomStatus.empty;
  bool get isError => this == RandomStatus.error;
}

class RandomState extends Equatable {
  // final RandomStatus status;

  // const RandomState({
  //   this.status,
  // });

  @override
  List<Object> get props => [];

  // RandomState copyWith({
  //   RandomStatus status,
  // }) {
  //   return RandomState(
  //     status: status ?? this.status,
  //   );
  // }
}
