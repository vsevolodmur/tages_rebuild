import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BankNotesGiven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding:
          EdgeInsets.only(top: MediaQuery.of(context).size.height * 41 / 770),
      child: Text(
        'Банкомат готов \nк выдаче наличных',
        textAlign: TextAlign.center,
        maxLines: 2,
        style: TextStyle(
          color: Color(0xffE61EAD),
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
