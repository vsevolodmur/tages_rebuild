import 'package:flutter/material.dart';

class BankNotesGivenText extends StatelessWidget {
  final String text;

  const BankNotesGivenText({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      maxLines: 2,
      style: TextStyle(
        color: Color(0xffE61EAD),
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
