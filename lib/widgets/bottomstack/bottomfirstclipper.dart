import 'package:flutter/material.dart';

class BottomFirstClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0.2766 * size.height);
    path.quadraticBezierTo(0.144 * size.width, 0.2619 * size.height,
        0.4947 * size.width, 0.6197 * size.height);
    path.quadraticBezierTo(0.8455 * size.width, 0.9776 * size.height,
        1.0 * size.width, 0.5708 * size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
