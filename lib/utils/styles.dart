import 'package:entry/entry.dart';
import 'package:expense_flutter_web/utils/colors.dart';
import 'package:flutter/material.dart';

ButtonStyle borderedButtonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      side: BorderSide(color: AppColors.primary),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);

Widget entryWidget(Widget widget) {
  return Entry(opacity: 0.1, duration: const Duration(milliseconds: 500), yOffset: 100, curve: Curves.easeIn, child: widget);
}
