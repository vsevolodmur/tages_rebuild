import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tages_rebuild/pages/homepage/homepage.dart';
import 'package:tages_rebuild/src/balance/cubit/balance/balance_cubit.dart';
import 'package:tages_rebuild/src/balance/cubit/money_request/money_request_cubit.dart';

void main() {
  Paint.enableDithering = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        home: MultiBlocProvider(
          providers: [
            BlocProvider<MoneyRequestCubit>(
              create: (context) => MoneyRequestCubit(),
            ),
            BlocProvider<BalanceCubit>(
              create: (context) => BalanceCubit(
                moneyRequestCubit: BlocProvider.of<MoneyRequestCubit>(context),
              ),
            )
          ],
          child: HomePage(),
        ),
      ),
    );
  }
}
