import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tages_rebuild/src/balance/cubit/balance_cubit.dart';

class BankNotesGiven extends StatelessWidget {
  final int referenceHeight;
  final int referenceWidth;
  BankNotesGiven({this.referenceHeight, this.referenceWidth});
  @override
  Widget build(BuildContext context) {
    // ignore: missing_return
    return BlocBuilder<BalanceCubit, BalanceState>(builder: (context, state) {
      if (state is BalanceInitialState) {
        return Container(
          height: double.infinity,
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 41 / 770),
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
      } else if (state is NoMoneyState) {
        return Container(
          height: double.infinity,
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 41 / 770),
          child: Text(
            'В банкомате отсутствует\n запрашиваемая сумма',
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
              color: Color(0xffE61EAD),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        );
      } else {
        return Container(
          height: double.infinity,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 21 / referenceWidth,
                MediaQuery.of(context).size.height * 14 / referenceHeight,
                MediaQuery.of(context).size.width * 60 / referenceWidth,
                0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    'Баланс банкомата',
                    style: TextStyle(
                      color: Color(0xffA3A2AC),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height *
                          15 /
                          referenceHeight),
                  child: BlocBuilder<BalanceCubit, BalanceState>(
                      builder: (context, state) {
                    final List<String> bankNotesNominal =
                        state.bankNotesGiven.keys.toList();
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Wrap(
                          direction: Axis.vertical,
                          alignment: WrapAlignment.start,
                          spacing: MediaQuery.of(context).size.height *
                              6 /
                              referenceHeight,
                          children: [
                            Text(
                                '${state.bankNotesGiven[bankNotesNominal[0]]} Х ${bankNotesNominal[0]} рублей'),
                            Text(
                                '${state.bankNotesGiven[bankNotesNominal[1]]} Х ${bankNotesNominal[1]} рублей'),
                            Text(
                                '${state.bankNotesGiven[bankNotesNominal[2]]} Х ${bankNotesNominal[2]} рублей'),
                          ],
                        ),
                        Spacer(),
                        Wrap(
                          direction: Axis.vertical,
                          alignment: WrapAlignment.start,
                          spacing: MediaQuery.of(context).size.height *
                              6 /
                              referenceHeight,
                          children: [
                            Text(
                                '${state.bankNotesGiven[bankNotesNominal[3]]} Х ${bankNotesNominal[3]} рублей'),
                            Text(
                                '${state.bankNotesGiven[bankNotesNominal[4]]} Х ${bankNotesNominal[4]} рублей'),
                            Text(
                                '${state.bankNotesGiven[bankNotesNominal[5]]} Х ${bankNotesNominal[5]} рублей'),
                          ],
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        );
      }
    });
  }
}
