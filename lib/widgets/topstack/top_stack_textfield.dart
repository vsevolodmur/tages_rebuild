import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tages_rebuild/src/balance/cubit/money_request_cubit.dart';

class TopStackTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MoneyRequestCubit moneyRequestCubit =
        BlocProvider.of<MoneyRequestCubit>(context);
    final TextStyle textStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w500,
      color: Color(0xffFFFFFF),
    );
    return Container(
      width: MediaQuery.of(context).size.width * 200 / 375,
      child: TextField(
        onChanged: (value) {
          moneyRequestCubit.moneyRequest(value);
        },
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        keyboardType: TextInputType.number,
        style: textStyle,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 0),
          hintText: '1 234.00 руб',
          hintStyle: textStyle,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffFFFFFF).withOpacity(0.3),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffE61EAD),
            ),
          ),
        ),
        cursorColor: Color(0xffE61EAD),
      ),
    );
  }
}
