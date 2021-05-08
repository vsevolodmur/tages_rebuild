import 'package:flutter/material.dart';
import 'package:tages_rebuild/widgets/topstack/topfirstclipper.dart';
import 'package:tages_rebuild/widgets/topstack/topforthclipper.dart';
import 'package:tages_rebuild/widgets/topstack/topsecondclipper.dart';
import 'package:tages_rebuild/widgets/topstack/topthirdclipper.dart';

class BezierStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff3827B4).withOpacity(0.7),
                    Color(0xff6C18A4).withOpacity(0.7),
                  ],
                ),
              ),
            ),
            clipper: TopFirstClipper(),
          ),
          ClipPath(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff3827B4).withOpacity(0.7),
                    Color(0xff6C18A4).withOpacity(0.7),
                  ],
                ),
              ),
            ),
            clipper: TopSecondClipper(),
          ),
          ClipPath(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Color(0xff3827B4).withOpacity(0.4),
                    Color(0xff6C18A4).withOpacity(0.4),
                  ],
                ),
              ),
            ),
            clipper: TopThirdClipper(),
          ),
          ClipPath(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Color(0xff3827B4).withOpacity(0.2),
                    Color(0xff6C18A4).withOpacity(0.2),
                  ],
                ),
              ),
            ),
            clipper: TopForthClipper(),
          ),
        ],
      ),
    );
  }
}

