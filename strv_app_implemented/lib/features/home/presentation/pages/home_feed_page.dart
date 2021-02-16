import 'package:flutter/material.dart';
import 'package:strv_app_implemented/core/config/assets.dart';
import 'package:strv_app_implemented/features/home/presentation/widgets/home_feed_content_widget.dart';
import 'package:strv_app_implemented/generated/i18n.dart';

class HomeFeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: HomeFeedContentWidget(getSliverAppBarView(context)),
      ),
    );
  }

  List<Widget> getSliverAppBarView(context) {
    return [SliverAppBar(pinned: true, title: getAppBarTitleView(context))];
  }

  Row getAppBarTitleView(context) {
    return Row(
      children: [
        Expanded(child: Container()),
        ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: Image.asset(Assets.APP_LOGO, width: 36, height: 36),
        ),
        SizedBox(width: 8),
        Text(S.of(context).appName, style: Theme.of(context).textTheme.headline6),
        Expanded(child: Container()),
      ],
    );
  }
}
