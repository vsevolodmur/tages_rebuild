import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tages_rebuild/src/balance/cubit/balance/balance_cubit.dart';

class BankNotesBalance extends StatelessWidget {
  final int referenceHeight;
  final int referenceWidth;
  BankNotesBalance({this.referenceHeight, this.referenceWidth});

  @override
  Widget build(BuildContext context) {
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
                    state.bankNotes.keys.toList();
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
                            '${state.bankNotes[bankNotesNominal[0]]} Х ${bankNotesNominal[0]} рублей'),
                        Text(
                            '${state.bankNotes[bankNotesNominal[1]]} Х ${bankNotesNominal[1]} рублей'),
                        Text(
                            '${state.bankNotes[bankNotesNominal[2]]} Х ${bankNotesNominal[2]} рублей'),
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
                            '${state.bankNotes[bankNotesNominal[3]]} Х ${bankNotesNominal[3]} рублей'),
                        Text(
                            '${state.bankNotes[bankNotesNominal[4]]} Х ${bankNotesNominal[4]} рублей'),
                        Text(
                            '${state.bankNotes[bankNotesNominal[5]]} Х ${bankNotesNominal[5]} рублей'),
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
}

//  return BlocBuilder<BalanceCubit, BalanceState>(builder: (context, state) {
//       if (state is BalanceInitialState) {
//         return Container(
//           height: double.infinity,
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(
//                 MediaQuery.of(context).size.width * 21 / referenceWidth,
//                 MediaQuery.of(context).size.height * 14 / referenceHeight,
//                 MediaQuery.of(context).size.width * 60 / referenceWidth,
//                 0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   child: Text(
//                     'Баланс банкомата',
//                     style: TextStyle(
//                       color: Color(0xffA3A2AC),
//                       fontSize: 13,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                       top: MediaQuery.of(context).size.height *
//                           15 /
//                           referenceHeight),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Wrap(
//                         direction: Axis.vertical,
//                         alignment: WrapAlignment.start,
//                         spacing: MediaQuery.of(context).size.height *
//                             6 /
//                             referenceHeight,
//                         children: [
//                           Text('50 Х 100 рублей'),
//                           Text('100 Х 200 рублей'),
//                           Text('100 Х 2000 рублей'),
//                         ],
//                       ),
//                       Spacer(),
//                       Wrap(
//                         direction: Axis.vertical,
//                         alignment: WrapAlignment.start,
//                         spacing: MediaQuery.of(context).size.height *
//                             6 /
//                             referenceHeight,
//                         children: [
//                           Text(
//                               '${state.bankNotes['500 рублей'].toString()} Х 500 рублей'),
//                           Text('10 Х 1000 рублей'),
//                           Text('10 Х 5000 рублей'),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }
//       if (state is BalanceChangeState) {
//         return Container(
//           height: double.infinity,
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(
//                 MediaQuery.of(context).size.width * 21 / referenceWidth,
//                 MediaQuery.of(context).size.height * 14 / referenceHeight,
//                 MediaQuery.of(context).size.width * 60 / referenceWidth,
//                 0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   child: Text(
//                     'Баланс банкомата',
//                     style: TextStyle(
//                       color: Color(0xffA3A2AC),
//                       fontSize: 13,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                       top: MediaQuery.of(context).size.height *
//                           15 /
//                           referenceHeight),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Wrap(
//                         direction: Axis.vertical,
//                         alignment: WrapAlignment.start,
//                         spacing: MediaQuery.of(context).size.height *
//                             6 /
//                             referenceHeight,
//                         children: [
//                           Text('50 Х 100 рублей'),
//                           Text('100 Х 200 рублей'),
//                           Text('100 Х 2000 рублей'),
//                         ],
//                       ),
//                       Spacer(),
//                       Wrap(
//                         direction: Axis.vertical,
//                         alignment: WrapAlignment.start,
//                         spacing: MediaQuery.of(context).size.height *
//                             6 /
//                             referenceHeight,
//                         children: [
//                           Text(
//                               '${state.bankNotes['500 рублей'].toString()} Х 500 рублей'),
//                           Text('10 Х 1000 рублей'),
//                           Text('10 Х 5000 рублей'),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }
//     });
