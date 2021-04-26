import 'package:flutter/cupertino.dart';

class TopFirstClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
    double heithCorrection = 124.62;
    final double _xScaling = size.width / 378;
    final double _yScaling = size.height / 378.62;

    path.lineTo(376 * _xScaling, 232.824 * _yScaling-heithCorrection);
    

    return path;
  }

  // @override
  // Path getClip(Size size) {
  //   Path path = Path();
  //   final double _xScaling = size.width / 376;
  //   final double _yScaling = size.height / 376;
  //   path.lineTo(376 * _xScaling, 232.824 * _yScaling - 279);
  //   path.cubicTo(
  //     376 * _xScaling,
  //     232.824 * _yScaling - 279,
  //     317.743 * _xScaling,
  //     275.94 * _yScaling - 279,
  //     185.515 * _xScaling,
  //     238.003 * _yScaling - 279,
  //   );
  //   path.cubicTo(
  //     53.287 * _xScaling,
  //     200.066 * _yScaling - 279,
  //     -1 * _xScaling,
  //     201.63 * _yScaling - 279,
  //     -1 * _xScaling,
  //     201.63 * _yScaling - 279,
  //   );
  //   path.cubicTo(
  //     -1 * _xScaling,
  //     201.63 * _yScaling - 279,
  //     0 * _xScaling,
  //     -124.997 * _yScaling - 279,
  //     0 * _xScaling,
  //     -124.997 * _yScaling - 279,
  //   );
  //   path.cubicTo(
  //     0 * _xScaling,
  //     -124.997 * _yScaling - 279,
  //     377 * _xScaling,
  //     -124.997 * _yScaling - 279,
  //     377 * _xScaling,
  //     -124.997 * _yScaling - 279,
  //   );
  //   path.cubicTo(
  //     377 * _xScaling,
  //     -124.997 * _yScaling - 279,
  //     376 * _xScaling,
  //     232.824 * _yScaling - 279,
  //     376 * _xScaling,
  //     232.824 * _yScaling - 279,
  //   );

  //   return path;
  // }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
