// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget MyTextField(
    {required String labelText,
    required IconData prefixIcon,
    required TextInputType keyboardType,
    dynamic value,
    bool? obscureText = false,
    IconData? suffixIcon}) {
  return TextFormField(
    validator: (value) ,
    
    keyboardType: keyboardType,
    obscureText: obscureText ?? false,
    decoration: InputDecoration(
      labelText: labelText,
      labelStyle: const TextStyle(fontSize: 19),
      prefixIcon: Icon(prefixIcon),
      border: InputBorder.none,
      suffixIcon: Icon(suffixIcon),
    ),
  );
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 1.25);

    path.cubicTo(size.width / 2 * .6, size.height * .5, size.width,
        size.height * 1.4, size.width * 1.2, size.height / 1.5);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
