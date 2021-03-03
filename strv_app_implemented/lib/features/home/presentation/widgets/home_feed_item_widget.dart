import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:strv_app_implemented/core/config/dimen.dart';
import 'package:strv_app_implemented/features/comics_detail/presentation/pages/comics_detail_page.dart';
import 'package:strv_app_implemented/features/home/data/models/comics.dart';

class HomeFeedItemWidget extends StatelessWidget {
  final Comics comics;

  static const double _textHorizontalSpacing = 15;
  static const double _textVerticalSpacing = 10;

  const HomeFeedItemWidget({Key key, this.comics}) : super(key: key);

  // Hack to display InkWell Image with Rounded corners from the network.
  // We are using stack to hack this behavior, and get ripple over whole card.
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(DimenRes.CARD_CORNER_SIZE)),
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 300.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(DimenRes.CARD_CORNER_SIZE),
                      topRight: Radius.circular(DimenRes.CARD_CORNER_SIZE),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: comics.url,
                      placeholder: (context, url) => CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  _textHorizontalSpacing,
                  _textVerticalSpacing,
                  _textHorizontalSpacing,
                  0,
                ),
                child: Text(
                  "#${comics.id}: ${comics.title}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: _textHorizontalSpacing,
                  vertical: _textVerticalSpacing,
                ),
                child: Text(
                  comics.description,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(DimenRes.CARD_CORNER_SIZE),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(DimenRes.CARD_CORNER_SIZE),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    ComicsDetailPage.ROUTE_NAME,
                    arguments: ComicsDetailRouteArguments(comics.id, comics.title, comics.description, comics.url),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
