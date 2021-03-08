import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photo_view/photo_view.dart';
import 'package:strv_app_implemented/core/resources/colors.dart';
import 'package:strv_app_implemented/core/resources/dimen.dart';

class ComicsDetailContentWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ComicsDetailContentWidget(BuildContext context, this.title, this.description, this.imageUrl) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
              left: DimenRes.GLOBAL_HORIZONTAL_SPACING,
              right: DimenRes.GLOBAL_HORIZONTAL_SPACING,
              top: DimenRes.GLOBAL_VERTICAL_SPACING,
              bottom: DimenRes.GLOBAL_VERTICAL_SPACING),
          width: double.infinity,
          child: Text(
            title,
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
            description,
            maxLines: 10,
            style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.black,
            child: PhotoView(imageProvider: NetworkImage(imageUrl)),
          ),
        ),
      ],
    );
  }
}
