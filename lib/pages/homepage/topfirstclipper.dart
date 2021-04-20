import 'package:flutter/cupertino.dart';

class TopFirstClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 376;
    final double _yScaling = size.height / 380;
    path.lineTo(376 * _xScaling, 232.824 * _yScaling);
    path.cubicTo(
      376 * _xScaling,
      232.824 * _yScaling,
      317.743 * _xScaling,
      275.94 * _yScaling,
      185.515 * _xScaling,
      238.003 * _yScaling,
    );
    path.cubicTo(
      53.287 * _xScaling,
      200.066 * _yScaling,
      -1 * _xScaling,
      201.63 * _yScaling,
      -1 * _xScaling,
      201.63 * _yScaling,
    );
    path.cubicTo(
      -1 * _xScaling,
      201.63 * _yScaling,
      0 * _xScaling,
      -124.997 * _yScaling,
      0 * _xScaling,
      -124.997 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      -124.997 * _yScaling,
      377 * _xScaling,
      -124.997 * _yScaling,
      377 * _xScaling,
      -124.997 * _yScaling,
    );
    path.cubicTo(
      377 * _xScaling,
      -124.997 * _yScaling,
      376 * _xScaling,
      232.824 * _yScaling,
      376 * _xScaling,
      232.824 * _yScaling,
    );
    path.cubicTo(
      376 * _xScaling,
      232.824 * _yScaling,
      376 * _xScaling,
      232.824 * _yScaling,
      376 * _xScaling,
      232.824 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
