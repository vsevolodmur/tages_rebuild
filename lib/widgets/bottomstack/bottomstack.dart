import 'package:flutter/material.dart';
import 'package:tages_rebuild/widgets/bottomstack/bottomfirstclipper.dart';
import 'package:tages_rebuild/widgets/bottomstack/bottomforthclipper.dart';
import 'package:tages_rebuild/widgets/bottomstack/bottomsecondclipper.dart';
import 'package:tages_rebuild/widgets/bottomstack/bottomthirdclipper.dart';

class BottomStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          RotatedBox(
            quarterTurns: 2,
            child: ClipPath(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      Color(0xff3827B4).withOpacity(0.7),
                      Color(0xff6C18A4).withOpacity(0.7),
                    ],
                  ),
                ),
              ),
              clipper: BottomFirstClipper(),
            ),
          ),
          RotatedBox(
            quarterTurns: 2,
            child: ClipPath(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      Color(0xff3827B4).withOpacity(0.7),
                      Color(0xff6C18A4).withOpacity(0.7),
                    ],
                  ),
                ),
              ),
              clipper: BottomSecondClipper(),
            ),
          ),
          RotatedBox(
            quarterTurns: 2,
            child: ClipPath(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff6C18A4).withOpacity(0.4),
                      Color(0xff6C18A4).withOpacity(0.4),
                    ],
                  ),
                ),
              ),
              clipper: BottomThirdClipper(),
            ),
          ),
          RotatedBox(
            quarterTurns: 2,
            child: ClipPath(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xff3827B4).withOpacity(0.2),
                      Color(0xff6C18A4).withOpacity(0.2),
                    ],
                  ),
                ),
              ),
              clipper: BottomForthClipper(),
            ),
          ),
        ],
      ),
    );
  }
}
