import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:strv_app_workshop/core/config/colors.dart';

class CloseButtonCenterAppBarTitle extends StatelessWidget {
  final String title;

  const CloseButtonCenterAppBarTitle(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.close, color: ColorRes.COLOR_TEXT),
          onPressed: () => Navigator.pop(context),
        ),
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(width: 48),
      ],
    );
  }
}

class BackButtonCenterAppBarTitle extends StatelessWidget {
  final String title;

  const BackButtonCenterAppBarTitle(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back, color: ColorRes.COLOR_TEXT),
          onPressed: () => Navigator.pop(context),
        ),
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(width: 48),
      ],
    );
  }
}
