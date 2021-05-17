import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tages_rebuild/pages/homepage/homepage.dart';
import 'package:tages_rebuild/src/balance/balance_repository.dart';
import 'package:tages_rebuild/src/balance/cubit/balance_cubit.dart';

void main() {
  Paint.enableDithering = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final bankNotes = BankNotes();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentScope = FocusScope.of(context);
        if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
          FocusManager.instance.primaryFocus.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            bodyText2: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ).apply(
            bodyColor: Color(0xff3827B4),
          ),
        ),
        home: BlocProvider<BalanceCubit>(
          create: (context) => BalanceCubit(bankNotes),
          child: HomePage(),
        ),
      ),
    );
  }
}
