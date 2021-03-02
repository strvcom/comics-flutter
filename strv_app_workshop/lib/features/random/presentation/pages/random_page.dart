// class RandomPage extends StatefulWidget {
//   @override
//   _RandomPageState createState() => _RandomPageState();
// }

// class _RandomPageState extends State<RandomPage> {
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
//       appBar: AppBar(
//           title: Row(
//             children: [Spacer(), Text(S.of(context).appName, style: Theme.of(context).textTheme.headline6), Spacer()],
//           ),
//           automaticallyImplyLeading: false),
//       body: BlocProvider(
//         create: (context) => RandomCubit(),
//         child: LayoutBuilder(
//           builder: (context, constraints) => BlocListener<RandomCubit, RandomState>(
//             listener: (context, state) {
//               if (!state.status.isLoading) {
//                 _refreshCompleter?.complete();
//                 _refreshCompleter = Completer();
//               }
//             },
//             child: BlocBuilder<RandomCubit, RandomState>(
//               builder: (context, state) {
//                 Widget body;
//                 switch (state.status) {
//                   case RandomStatus.loading:
//                     body = Container(
//                       width: constraints.maxWidth,
//                       height: constraints.maxHeight,
//                       child: Center(child: CircularProgressIndicator()),
//                     );
//                     break;
//                   case RandomStatus.success:
//                     body = Container(
//                       width: constraints.maxWidth,
//                       height: constraints.maxHeight,
//                       child: ComicsDetailContentWidget(
//                         context,
//                         state.comics?.title ?? "",
//                         state.comics?.description ?? "",
//                         state.comics?.url ?? "",
//                       ),
//                     );

//                     break;
//                   case RandomStatus.empty:
//                     body = StateEmptyWidget(
//                       constraints,
//                       () => _refreshIndicatorKey.currentState.show(),
//                     );
//                     break;
//                   case RandomStatus.error:
//                   default:
//                     body = StateErrorWidget(
//                       "Error text",
//                       constraints,
//                       () => _refreshIndicatorKey.currentState.show(),
//                     );
//                 }

//                 return RefreshIndicator(
//                   key: _refreshIndicatorKey,
//                   child: CustomScrollView(
//                     physics: const AlwaysScrollableScrollPhysics(),
//                     slivers: [
//                       SliverToBoxAdapter(
//                         child: body,
//                       )
//                     ],
//                   ),
//                   onRefresh: () {
//                     context.read<RandomCubit>().refreshData();
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

//   Widget getSliverAppBarView(context) {
//     return SliverAppBar(
//         pinned: true,
//         title: Row(
//           children: [Spacer(), Text(S.of(context).appName, style: Theme.of(context).textTheme.headline6), Spacer()],
//         ));
//   }
// }
