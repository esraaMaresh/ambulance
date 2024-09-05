import 'package:flutter/material.dart';

Widget textPasswordField({
  required TextEditingController controller,
  required String hintText,
  required String validateText,
  required IconData prefixIcon,
  required TextInputType keyboardType,
  required Icon suffixIcon,
  required Function()? onPressedSuffix,
  bool isPasswordVisible = false,
  bool isPassword = false,
}) {
  return Container(
    child: TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword,
      validator: (value) {
        if (value!.isEmpty) {
          return validateText;
        }
        return null;
      },
      decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFFF3F3F),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          prefixIcon: Icon(prefixIcon, color: Colors.white),
          suffixIcon: IconButton(
            onPressed: onPressedSuffix,
            icon: suffixIcon,
            color: Colors.white,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.elliptical(15, 15)))),
    ),
  );
}
