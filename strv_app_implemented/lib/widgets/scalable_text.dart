import 'package:flutter/widgets.dart';

class ScalableText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const ScalableText({Key key, @required this.text, @required this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Text(
          text,
          maxLines: (constraints.biggest.height / (style.fontSize * (style.height ?? 1.2))).floor(),
          style: style,
          overflow: TextOverflow.ellipsis,
        );
      },
    );
  }
}
