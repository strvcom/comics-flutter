// class HomeFeedPage extends StatefulWidget {
//   @override
//   _HomeFeedPageState createState() => _HomeFeedPageState();
// }

// class _HomeFeedPageState extends State<HomeFeedPage> {
//   Completer<void> _refreshCompleter;
//   var _refreshIndicatorKey = new GlobalKey<RefreshIndicatorState>();

//   @override
//   void initState() {
//     super.initState();
//     _refreshCompleter = Completer<void>();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: NestedScrollView(
//         headerSliverBuilder: (context, innerBoxIsScrolled) => getSliverAppBarView(context),
//         body: LayoutBuilder(
//           builder: (context, constraints) => BlocListener<HomeFeedCubit, HomeFeedState>(
//             listener: (context, state) {
//               if (!state.status.isLoading) {
//                 _refreshCompleter?.complete();
//                 _refreshCompleter = Completer();
//               }
//             },
//             child: BlocBuilder<HomeFeedCubit, HomeFeedState>(
//               builder: (context, state) {
//                 Widget body;
//                 switch (state.status) {
//                   case HomeFeedStatus.loading:
//                   // No loading state as we are showing content with shimmering items.
//                   case HomeFeedStatus.success:
//                     body = HomeFeedContentWidget(state: state);
//                     break;
//                   case HomeFeedStatus.empty:
//                     body = StateEmptyWidget(constraints, () => _refreshIndicatorKey.currentState.show());
//                     break;
//                   case HomeFeedStatus.error:
//                   default:
//                     body = StateErrorWidget("Error text", constraints, () => _refreshIndicatorKey.currentState.show());
//                 }

//                 return RefreshIndicator(
//                   key: _refreshIndicatorKey,
//                   child: body,
//                   onRefresh: () {
//                     context.read<HomeFeedCubit>().refreshData();
//                     return _refreshCompleter.future;
//                   },
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   List<Widget> getSliverAppBarView(context) {
//     return [
//       SliverAppBar(
//         pinned: true,
//         title: Row(
//           children: [
//             Spacer(),
//             ClipRRect(
//               borderRadius: BorderRadius.circular(6.0),
//               child: Image.asset(Assets.APP_LOGO, width: 36, height: 36),
//             ),
//             SizedBox(width: 8),
//             Text(S.of(context).appName, style: Theme.of(context).textTheme.headline6),
//             Spacer(),
//           ],
//         ),
//       ),
//     ];
//   }
// }
