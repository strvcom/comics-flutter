import 'package:strv_app_implemented/core/config/colors.dart';
import 'package:strv_app_implemented/generated/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StateEmptyWidget extends StatelessWidget {
  final Function onReloadPress;

  const StateEmptyWidget({Key key, this.onReloadPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          child: Column(
            children: [
              Spacer(),
              Icon(
                Icons.amp_stories_rounded,
                color: Colors.black,
                size: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  S.of(context).generalEmptyTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: ColorRes.COLOR_TEXT,
                  ),
                ),
              ),
              SizedBox(height: 100),
              RaisedButton(
                child: Text(S.of(context).generalTryAgain),
                onPressed: () {
                  onReloadPress();
                },
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
