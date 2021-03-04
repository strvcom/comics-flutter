// class StateErrorWidget extends StatelessWidget {
//   final String error;
//   final BoxConstraints constraints;
//   final Function onReloadPress;

//   const StateErrorWidget(this.error, this.constraints, this.onReloadPress, {Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         width: constraints.maxWidth,
//         height: constraints.maxHeight,
//         child: Column(
//           children: [
//             Spacer(),
//             Icon(
//               Icons.error,
//               color: Colors.red,
//               size: 150,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Text(
//                 S.of(context).generalErrorTitle,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: ColorRes.COLOR_GRAY,
//                   fontSize: 26,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//             SizedBox(height: 100),
//             ElevatedButton(
//               child: Text(S.of(context).generalTryAgain),
//               onPressed: () {
//                 onReloadPress();
//               },
//             ),
//             Spacer(),
//           ],
//         ),
//       ),
//     );
//   }
// }
