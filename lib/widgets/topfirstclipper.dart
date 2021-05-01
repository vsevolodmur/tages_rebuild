import 'package:flutter/material.dart';

class TopFirstClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 377;
    final double _yScaling = size.height / 185.46;
    path.lineTo(0, 136.63 * _yScaling);
    path.quadraticBezierTo(54.29 * _xScaling, 135.07 * _yScaling,
        186.52 * _xScaling, 173.0 * _yScaling);
    path.quadraticBezierTo(318.74 * _xScaling, 210.94 * _yScaling,
        377 * _xScaling, 167.82 * _yScaling);
    path.lineTo(377 * _xScaling, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
