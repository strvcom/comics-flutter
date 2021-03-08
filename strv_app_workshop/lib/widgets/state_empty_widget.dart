import 'package:strv_app_workshop/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StateEmptyWidget extends StatelessWidget {
  final Function onReloadPress;
  final BoxConstraints constraints;

  const StateEmptyWidget(this.constraints, this.onReloadPress, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        child: Column(
          children: [
            Spacer(),
            Icon(
              Icons.amp_stories_rounded,
              color: ColorRes.COLOR_GRAY,
              size: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Nothings here!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorRes.COLOR_GRAY,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              child: Text("Try Again"),
              onPressed: () {
                onReloadPress();
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
