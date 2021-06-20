import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tages_rebuild/src/balance/cubit/balance/balance_cubit.dart';

class GiveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BalanceCubit balanceCubit = BlocProvider.of<BalanceCubit>(context);
    return Container(
      height: double.infinity,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: MediaQuery.of(context).size.width * 200 / 375,
          height: MediaQuery.of(context).size.height * 60 / 671,
          child: FloatingActionButton.extended(
            backgroundColor: Color(0xffE61EAD),
            onPressed: () => balanceCubit.changeBalance(),
            label: Text(
              'Выдать сумму',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
