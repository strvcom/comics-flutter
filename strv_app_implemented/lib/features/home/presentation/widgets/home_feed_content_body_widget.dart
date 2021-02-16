import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:strv_app_implemented/core/config/dimen.dart';
import 'package:strv_app_implemented/features/comics_detail/presentation/pages/comics_detail_page.dart';
import 'package:strv_app_implemented/features/home/data/models/comics.dart';
import 'package:strv_app_implemented/features/home/presentation/cubit/home_feed_cubit.dart';
import 'package:strv_app_implemented/features/home/presentation/widgets/home_feed_item_shimmer_widget.dart';
import 'package:strv_app_implemented/features/home/presentation/widgets/home_feed_item_widget.dart';

class HomeFeedContentBodyWidget extends StatelessWidget {
  const HomeFeedContentBodyWidget({
    Key key,
    @required this.state,
  }) : super(key: key);

  final HomeFeedState state;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.symmetric(
            horizontal: DimenRes.GLOBAL_HORIZONTAL_SPACING - 4,
            vertical: DimenRes.GLOBAL_VERTICAL_SPACING,
          ),
          sliver: PagedSliverList(
            builderDelegate: PagedChildBuilderDelegate<Comics>(
              itemBuilder: (context, item, index) {
                if (item == null || item.url == null) {
                  return HomeFeedItemShimmerWidget();
                } else {
                  return HomeFeedItemWidget(
                      title: item.title,
                      description: item.description,
                      image: item.url,
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          ComicsDetailPage.ROUTE_NAME,
                          arguments: ComicsDetailRouteArguments(item.id, item.title, item.description, item.url),
                        );
                      });
                }
              },
            ),
            pagingController: state.comicsPagingController,
          ),
        ),
      ],
    );
  }
}
