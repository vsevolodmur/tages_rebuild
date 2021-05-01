import 'package:flutter/material.dart';

class TopSecondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    final double _xScaling = size.width / 377;
    final double _yScaling = size.height / 185.46;
    print( 185.46 * _yScaling);
    path.lineTo(0, 161.06 * _yScaling);
    path.quadraticBezierTo(121.43 * _xScaling, 147.58 * _yScaling,
        254 * _xScaling, 185.46 * _yScaling);
    path.quadraticBezierTo(386.57 * _xScaling, 223.33 * _yScaling,
        451.51 * _xScaling, 176.65 * _yScaling);
    path.lineTo(451.51 * _xScaling, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
