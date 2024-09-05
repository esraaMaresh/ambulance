import 'package:flutter/material.dart';

Widget textField({
  required TextEditingController controller,
  required String hintText,
  required String validateText,
  required IconData prefixIcon,
  required TextInputType keyboardType,
  Icon? suffixIcon,
  Function()? onPressedSuffix,
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
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.white,
          ),
          suffixIcon: suffixIcon != null
              ? IconButton(
                  icon: suffixIcon,
                  onPressed: onPressedSuffix,
                  color: Colors.white,
                )
              : null,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.elliptical(15, 15)))),
    ),
  );
}
