// class HomeFeedContentWidget extends StatelessWidget {
//   const HomeFeedContentWidget({
//     Key key,
//     @required this.state,
//   }) : super(key: key);

//   final HomeFeedState state;

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: <Widget>[
//         SliverPadding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: DimenRes.GLOBAL_HORIZONTAL_SPACING - 4,
//             vertical: DimenRes.GLOBAL_VERTICAL_SPACING,
//           ),
//           sliver: PagedSliverList(
//             builderDelegate: PagedChildBuilderDelegate<Comics>(
//               itemBuilder: (context, item, index) {
//                 if (item == null || item.url == null) {
//                   return HomeFeedItemShimmerWidget();
//                 } else {
//                   return HomeFeedItemWidget(
//                       comics: item,
//                       onTap: () {
//                         Navigator.of(context).pushNamed(
//                           ComicsDetailPage.ROUTE_NAME,
//                           arguments: ComicsDetailRouteArguments(item.id, item.title, item.description, item.url),
//                         );
//                       });
//                 }
//               },
//             ),
//             pagingController: state.comicsPagingController,
//           ),
//         ),
//       ],
//     );
//   }
// }
