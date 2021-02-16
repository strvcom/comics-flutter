import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:strv_app_implemented/core/config/dimen.dart';

class HomeFeedItemShimmerWidget extends StatelessWidget {
  static const double _textHorizontalSpacing = 15;
  static const double _textVerticalSpacing = 12;

  const HomeFeedItemShimmerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300],
        highlightColor: Colors.grey[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(DimenRes.CARD_CORNER_SIZE),
                  topRight: Radius.circular(DimenRes.CARD_CORNER_SIZE)),
              child: Container(
                height: 300,
                color: Colors.grey,
              ),
            ),
            Container(
              height: 100,
              padding: EdgeInsets.fromLTRB(_textHorizontalSpacing, _textVerticalSpacing, _textHorizontalSpacing, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(width: 96, margin: EdgeInsets.fromLTRB(0, 0, 0, 0), height: 16, color: Colors.grey),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, _textVerticalSpacing, 0, 0),
                    height: 13,
                    color: Colors.grey,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                    height: 13,
                    color: Colors.grey,
                  ),
                  Container(
                    width: 90,
                    margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                    height: 13,
                    color: Colors.grey,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
