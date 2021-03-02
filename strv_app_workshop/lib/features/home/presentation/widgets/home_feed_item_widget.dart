// class HomeFeedItemWidget extends StatelessWidget {
//   final Comics comics;
//   final Function() onTap;

//   static const double _textHorizontalSpacing = 15;
//   static const double _textVerticalSpacing = 10;

//   const HomeFeedItemWidget({Key key, this.comics, this.onTap}) : super(key: key);

//   // Hack to display InkWell Image with Rounded corners from the network.
//   // We are using stack to hack this behavior, and get ripple over whole card.
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(DimenRes.CARD_CORNER_SIZE)),
//       child: Stack(
//         children: <Widget>[
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: ConstrainedBox(
//                   constraints: BoxConstraints(maxHeight: 300.0),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(DimenRes.CARD_CORNER_SIZE),
//                       topRight: Radius.circular(DimenRes.CARD_CORNER_SIZE),
//                     ),
//                     child: CachedNetworkImage(
//                       imageUrl: comics.url,
//                       placeholder: (context, url) => CircularProgressIndicator(),
//                       errorWidget: (context, url, error) => Icon(Icons.error),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(
//                   _textHorizontalSpacing,
//                   _textVerticalSpacing,
//                   _textHorizontalSpacing,
//                   0,
//                 ),
//                 child: Text(
//                   "#${comics.id}: ${comics.title}",
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: Theme.of(context).textTheme.subtitle1,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: _textHorizontalSpacing,
//                   vertical: _textVerticalSpacing,
//                 ),
//                 child: Text(
//                   comics.description,
//                   maxLines: 4,
//                   overflow: TextOverflow.ellipsis,
//                   style: Theme.of(context).textTheme.bodyText2,
//                 ),
//               ),
//             ],
//           ),
//           Positioned.fill(
//             child: Material(
//               color: Colors.transparent,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(DimenRes.CARD_CORNER_SIZE),
//               ),
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(DimenRes.CARD_CORNER_SIZE),
//                 onTap: onTap,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
