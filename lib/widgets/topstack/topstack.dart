import 'package:flutter/material.dart';
import 'package:tages_rebuild/widgets/topstack/top_bezier_stack.dart';
import 'package:tages_rebuild/widgets/topstack/top_stack_textfield.dart';

class TopStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          BezierStack(),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 26 / 770),
              child: Column(
                children: [
                  Text(
                    'Введите сумму',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  TopStackTextField(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

     
      // child: Stack(
      //   children: <Widget>[
      //     ClipPath(
      //       child: Container(
      //         decoration: BoxDecoration(
      //           gradient: LinearGradient(
      //             colors: [
      //               Color(0xff3827B4).withOpacity(0.7),
      //               Color(0xff6C18A4).withOpacity(0.7),
      //             ],
      //           ),
      //         ),
      //       ),
      //       clipper: TopFirstClipper(),
      //     ),
      //     ClipPath(
      //       child: Container(
      //         decoration: BoxDecoration(
      //           gradient: LinearGradient(
      //             colors: [
      //               Color(0xff3827B4).withOpacity(0.7),
      //               Color(0xff6C18A4).withOpacity(0.7),
      //             ],
      //           ),
      //         ),
      //       ),
      //       clipper: TopSecondClipper(),
      //     ),
      //     ClipPath(
      //       child: Container(
      //         decoration: BoxDecoration(
      //           gradient: LinearGradient(
      //             begin: Alignment.bottomCenter,
      //             colors: [
      //               Color(0xff3827B4).withOpacity(0.4),
      //               Color(0xff6C18A4).withOpacity(0.4),
      //             ],
      //           ),
      //         ),
      //       ),
      //       clipper: TopThirdClipper(),
      //     ),
      //     ClipPath(
      //       child: Container(
      //         decoration: BoxDecoration(
      //           gradient: LinearGradient(
      //             begin: Alignment.bottomCenter,
      //             colors: [
      //               Color(0xff3827B4).withOpacity(0.2),
      //               Color(0xff6C18A4).withOpacity(0.2),
      //             ],
      //           ),
      //         ),
      //       ),
      //       clipper: TopForthClipper(),
      //     ),
          // Align(
          //   alignment: Alignment.topCenter,
          //   child: Padding(
          //     padding: EdgeInsets.only(top: widgetHeight * 26 / 179.31),
          //     child: Column(
          //       children: [
          //         Text(
          //           'Введите сумму',
          //           style: TextStyle(
          //             fontSize: 15,
          //             fontWeight: FontWeight.w400,
          //           ),
          //         ),
          //         TopStackTextField(
          //             MediaQuery.of(context).size.width * 200 / 375),
          //       ],
          //     ),
          //   ),
          // ),