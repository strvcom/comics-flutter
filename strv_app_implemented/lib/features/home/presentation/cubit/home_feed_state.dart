part of 'home_feed_cubit.dart';

enum HomeFeedStatus { loading, success, empty, error }

extension HomeStatusX on HomeFeedStatus {
  bool get isLoading => this == HomeFeedStatus.loading;
  bool get isSuccess => this == HomeFeedStatus.success;
  bool get isEmpty => this == HomeFeedStatus.empty;
  bool get isError => this == HomeFeedStatus.error;
}

class HomeFeedState extends Equatable {
  final HomeFeedStatus status;
  final PagingController<int, Comics> comicsPagingController;

  const HomeFeedState({
    this.status,
    this.comicsPagingController,
  });

  @override
  List<Object> get props => [status, comicsPagingController];

  HomeFeedState copyWith({
    HomeFeedStatus status,
    PagingController<int, Comics> comicsPagingController,
  }) {
    return HomeFeedState(
      status: status ?? this.status,
      comicsPagingController: comicsPagingController ?? this.comicsPagingController,
    );
  }
}
