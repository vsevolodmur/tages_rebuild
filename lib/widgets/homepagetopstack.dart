import 'package:flutter/material.dart';
import 'package:tages_rebuild/widgets/topfirstclipper.dart';
import 'package:tages_rebuild/widgets/topsecondclipper.dart';

class TopStackClipper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.red,
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
        ],
      ),
    );
  }
}
