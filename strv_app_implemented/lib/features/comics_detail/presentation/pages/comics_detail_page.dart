import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:strv_app_implemented/core/config/colors.dart';
import 'package:strv_app_implemented/core/config/dimen.dart';
import 'package:strv_app_implemented/widgets/app_bar.dart';

class ComicsDetailRouteArguments {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  ComicsDetailRouteArguments(this.id, this.title, this.description, this.imageUrl);
}

class ComicsDetailPage extends StatelessWidget {
  static const ROUTE_NAME = '/comicsDetail';
  final ComicsDetailRouteArguments args;

  const ComicsDetailPage({Key key, this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: BackButtonCenterAppBarTitle(args.title), automaticallyImplyLeading: false),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: DimenRes.GLOBAL_HORIZONTAL_SPACING,
                right: DimenRes.GLOBAL_HORIZONTAL_SPACING,
                top: DimenRes.GLOBAL_VERTICAL_SPACING,
                bottom: DimenRes.GLOBAL_VERTICAL_SPACING),
            width: double.infinity,
            child: Text(
              args.title,
              maxLines: 2,
              style: Theme.of(context).textTheme.headline1.copyWith(color: ColorRes.COLOR_ACCENT),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: DimenRes.GLOBAL_HORIZONTAL_SPACING,
                right: DimenRes.GLOBAL_HORIZONTAL_SPACING,
                bottom: DimenRes.GLOBAL_VERTICAL_SPACING * 2),
            width: double.infinity,
            child: Text(
              args.description,
              maxLines: 10,
              style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              height: 300,
              child: PhotoView(
                imageProvider: NetworkImage(args.imageUrl),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
