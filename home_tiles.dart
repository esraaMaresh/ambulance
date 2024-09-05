import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget homeTiles({
  required ImageProvider image,
  required Function() onTap,
}) {
  return InkWell(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 100,
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
        ),
        border: Border.all(
          color: Color(0xFFFF3F3F),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    onTap: onTap,
  );
}
