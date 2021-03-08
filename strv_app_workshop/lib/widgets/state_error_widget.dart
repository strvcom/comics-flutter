import 'package:strv_app_workshop/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StateErrorWidget extends StatelessWidget {
  final String error;
  final BoxConstraints constraints;
  final Function onReloadPress;

  const StateErrorWidget(this.error, this.constraints, this.onReloadPress, {Key key}) : super(key: key);

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
              Icons.error,
              color: Colors.red,
              size: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Oops! Something went wrong!",
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
