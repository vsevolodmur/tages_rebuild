import 'package:flutter/material.dart';
import 'package:tages_rebuild/widgets/give_button.dart';
import 'package:tages_rebuild/widgets/homepagetopstack.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          elevation: 30.0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff3827B4), Color(0xff6C18A4)],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          TopStackClipper(),
          GiveButton(),
        ],
      ),
    );
  }
}
