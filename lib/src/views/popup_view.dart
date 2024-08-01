import 'package:flutter/material.dart';

class PopupView {
  final BuildContext context;

  PopupView(this.context);

  static void showPopup(BuildContext context,
      {required Widget content, double heightFraction = 1 / 3}) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * heightFraction,
          padding: EdgeInsets.all(16.0),
          child: content,
        );
      },
    );
  }
}
