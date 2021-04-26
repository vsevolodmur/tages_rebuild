import 'package:flutter/cupertino.dart';

class TopSecondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 376;
    final double _yScaling = size.height / 452;
    path.lineTo(451.535 * _xScaling, 226.649 * _yScaling-125);
    path.cubicTo(
      451.535 * _xScaling,
      226.649 * _yScaling-125,
      385.598 * _xScaling,
      273.333 * _yScaling-125,
      253.029 * _xScaling,
      235.457 * _yScaling-125,
    );
    path.cubicTo(
      120.46 * _xScaling,
      197.581 * _yScaling-125,
      -0.971008 * _xScaling,
      211.057 * _yScaling-125,
      -0.971008 * _xScaling,
      211.057 * _yScaling-125,
    );
    path.cubicTo(
      -0.971008 * _xScaling,
      211.057 * _yScaling-125,
      0.0289917 * _xScaling,
      -124.997 * _yScaling-125,
      0.0289917 * _xScaling,
      -124.997 * _yScaling-125,
    );
    path.cubicTo(
      0.0289917 * _xScaling,
      -124.997 * _yScaling-125,
      376 * _xScaling,
      -124.997 * _yScaling-125,
      376 * _xScaling,
      -124.997 * _yScaling-125,
    );
    path.cubicTo(
      376 * _xScaling,
      -124.997 * _yScaling-125,
      451.535 * _xScaling,
      226.649 * _yScaling-125,
      451.535 * _xScaling,
      226.649 * _yScaling-125,
    );
    path.cubicTo(
      451.535 * _xScaling,
      226.649 * _yScaling-125,
      451.535 * _xScaling,
      226.649 * _yScaling-125,
      451.535 * _xScaling,
      226.649 * _yScaling-125,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
