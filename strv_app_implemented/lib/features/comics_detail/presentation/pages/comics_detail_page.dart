import 'package:flutter/material.dart';
import 'package:strv_app_implemented/features/comics_detail/presentation/widgets/comics_detail_content_widget.dart';
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
      body: ComicsDetailContentWidget(
        context,
        args.title,
        args.description,
        args.imageUrl,
      ),
    );
  }
}
