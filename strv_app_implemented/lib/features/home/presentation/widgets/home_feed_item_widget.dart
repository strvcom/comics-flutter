import 'package:flutter/material.dart';
import 'package:strv_app_implemented/core/config/dimen.dart';
import 'package:strv_app_implemented/widgets/scalable_text.dart';

class HomeFeedItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Function() onTap;

  static const double _textHorizontalSpacing = 15;
  static const double _textVerticalSpacing = 10;

  const HomeFeedItemWidget({Key key, this.title, this.description, this.image, this.onTap}) : super(key: key);

  // Hack to display InkWell Image with Rounded corners from the network.
  // We are using stack to hack this behavior, and get ripple over whole card.
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(DimenRes.CARD_CORNER_SIZE)),
      child: Container(
        height: 400,
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(DimenRes.CARD_CORNER_SIZE),
                      topRight: Radius.circular(DimenRes.CARD_CORNER_SIZE),
                    ),
                    child: Image.network(image, fit: BoxFit.contain),
                  ),
                ),
                Flexible(
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                            _textHorizontalSpacing,
                            _textVerticalSpacing,
                            _textHorizontalSpacing,
                            0,
                          ),
                          child: Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: _textHorizontalSpacing,
                              vertical: _textVerticalSpacing,
                            ),
                            child: ScalableText(text: description, style: Theme.of(context).textTheme.bodyText2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Material(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(DimenRes.CARD_CORNER_SIZE),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(DimenRes.CARD_CORNER_SIZE),
                onTap: onTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
