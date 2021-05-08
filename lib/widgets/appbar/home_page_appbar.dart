import 'package:flutter/material.dart';
import 'package:tages_rebuild/widgets/appbar/app_bar_icon.dart';

class HomePageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int referenceHeight = 770;
    final int referenceWidth = 375;
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.fromLTRB(
            MediaQuery.of(context).size.width * 21 / referenceWidth,
            MediaQuery.of(context).size.width * 55 / referenceHeight,
            0,
            0),
        child: Icon(AppBarIcon.logo,
            size: MediaQuery.of(context).size.height * 26.7 / referenceHeight),
      ),
      elevation: 10,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff3827B4), Color(0xff6C18A4)],
          ),
        ),
      ),
    );
  }
}
