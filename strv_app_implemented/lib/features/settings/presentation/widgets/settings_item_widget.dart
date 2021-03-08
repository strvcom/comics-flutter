import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:strv_app_implemented/core/resources/colors.dart';

class SettingsItemWidget extends StatelessWidget {
  const SettingsItemWidget({
    Key key,
    @required this.context,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  final BuildContext context;
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 24, right: 24),
      dense: false,
      title: Text(text, style: Theme.of(context).textTheme.subtitle2),
      trailing: Icon(Icons.chevron_right_rounded, color: ColorRes.COLOR_TEXT),
      onTap: onTap,
    );
  }
}
