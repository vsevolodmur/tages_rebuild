import 'package:flutter/material.dart';
import 'package:tages_rebuild/widgets/appbar/home_page_appbar.dart';
import 'package:tages_rebuild/widgets/balance/bank_notes_balance.dart';
import 'package:tages_rebuild/widgets/balance/bank_notes_given.dart';
import 'package:tages_rebuild/widgets/bottomstack/bottomstack.dart';
import 'package:tages_rebuild/widgets/give_button.dart';
import 'package:tages_rebuild/widgets/topstack/topstack.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int referenceHeight = 770;
    final int referenceWidth = 375;

    final Color spacingColor = Color(0xff3827B4).withOpacity(0.06);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
            (MediaQuery.of(context).size.height * 97 / referenceHeight) -
                MediaQuery.of(context).padding.top),
        child: HomePageAppBar(),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 180,
            child: TopStack(),
          ),
          Flexible(
            flex: 86,
            child: GiveButton(),
          ),
          Flexible(
            flex: 10,
            child: Container(
              color: spacingColor,
            ),
          ),
          Flexible(
            flex: 128,
            child: BankNotesGiven(),
          ),
          Flexible(
            flex: 10,
            child: Container(
              color: spacingColor,
            ),
          ),
          Flexible(
            flex: 128,
            child: BankNotesBalance(
              referenceHeight: referenceHeight,
              referenceWidth: referenceWidth,
            ),
          ),
          Flexible(
            flex: 10,
            child: Container(
              color: spacingColor,
            ),
          ),
          Flexible(
            flex: 13,
            child: Container(),
          ),
          Flexible(
            flex: 121,
            child: BottomStack(),
          ),
        ],
      ),
    );
  }
}
