part of 'random_cubit.dart';

enum RandomStatus { loading, success, empty, error }

extension HomeStatusX on RandomStatus {
  bool get isLoading => this == RandomStatus.loading;
  bool get isSuccess => this == RandomStatus.success;
  bool get isEmpty => this == RandomStatus.empty;
  bool get isError => this == RandomStatus.error;
}

class RandomState extends Equatable {
  final RandomStatus status;
  final Comics comics;

  const RandomState({
    this.status,
    this.comics,
  });

  @override
  List<Object> get props => [status, comics];

  RandomState copyWith({
    RandomStatus status,
    GlobalKey<RefreshIndicatorState> refreshIndicatorKey,
    Comics comics,
  }) {
    return RandomState(
      status: status ?? this.status,
      comics: comics ?? this.comics,
    );
  }
}
