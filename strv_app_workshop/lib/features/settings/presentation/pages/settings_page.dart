// class SettingsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(S.of(context).appBarSettings)),
//       body: ConstrainedBox(
//         constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
//         child: Column(
//           children: <Widget>[
//             SettingsItemWidget(context: context, text: "Settings 1", onTap: () => {}),
//             SettingsDividerWidget(),
//             SettingsItemWidget(context: context, text: "Settings 2", onTap: () => {}),
//             SettingsDividerWidget(),
//             SettingsItemWidget(context: context, text: "Settings 3", onTap: () => {}),
//             SettingsDividerWidget(),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 padding: EdgeInsets.symmetric(
//                   vertical: DimenRes.GLOBAL_VERTICAL_SPACING,
//                   horizontal: DimenRes.GLOBAL_HORIZONTAL_SPACING,
//                 ),
//                 alignment: Alignment.bottomCenter,
//                 child: Text("Version: 1.0.0", style: Theme.of(context).textTheme.caption),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
