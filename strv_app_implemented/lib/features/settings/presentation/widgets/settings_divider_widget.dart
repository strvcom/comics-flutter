import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:strv_app_implemented/core/config/colors.dart';

class SettingsDividerWidget extends StatelessWidget {
  const SettingsDividerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24),
      child: Container(height: 1, color: ColorRes.COLOR_DIVIDER),
    );
  }
}
