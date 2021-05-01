import 'package:flutter/material.dart';

class GiveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton.extended(
        backgroundColor: Colors.purple,
        onPressed: () => {},
        label: Text(
          'Выдать сумму',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
