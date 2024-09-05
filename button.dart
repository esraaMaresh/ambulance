import 'package:flutter/material.dart';

Widget button({
  required Function() onPressed,
  required String btnName,
  required double btnHeight,
  required double fontSize,
  required Color textColor,
  required Color btnColor,
  required double btnWidth,
  IconData? icon,
}) {
  return Container(
    width: btnWidth,
    child: MaterialButton(
      onPressed: onPressed,
      height: btnHeight,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),
          Center(
            child: Text(
              btnName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
      color: btnColor,
    ),
  );
}
