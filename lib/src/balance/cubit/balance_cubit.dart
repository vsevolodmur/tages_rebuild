import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tages_rebuild/src/balance/balance_repository.dart';
import 'package:tages_rebuild/src/balance/cubit/money_request_cubit.dart';

part 'balance_state.dart';

class BalanceCubit extends Cubit<BalanceState> {
  final MoneyRequestCubit moneyRequestCubit;
  BalanceCubit({@required this.moneyRequestCubit})
      : super(
          BalanceInitialState(
              bankNotes: BankNotes().bankNotes,
              bankNotesGiven: BankNotes().bankNotes),
        );

  void changeBalance() {
    final Map<String, int> bankNotesLeftInBank = Map.from(state.bankNotes);
    final Map<String, int> bankNotesGiven = Map.from(state.bankNotesGiven);
    bankNotesGiven.updateAll((key, value) => 0);
    if (moneyRequestCubit.state is MoneyRequestInitial) {
    } else if (int.parse(moneyRequestCubit.state.requestedAmount) > 10) {
      emit(
        NoMoneyState(
            bankNotes: bankNotesLeftInBank,
            bankNotesGiven: state.bankNotesGiven),
      );
    } else {
      int moneyInBank = 0;
      bankNotesLeftInBank.forEach(
        (key, value) {
          moneyInBank += int.parse(key) * value;
        },
      );

      bankNotesLeftInBank.update(
          '500',
          (value) =>
              value + int.parse(moneyRequestCubit.state.requestedAmount));
      bankNotesGiven.update(
          '500',
          (value) =>
              value - int.parse(moneyRequestCubit.state.requestedAmount));

      emit(BalanceChangeState(
          bankNotes: bankNotesLeftInBank, bankNotesGiven: bankNotesGiven));
    }
  }
}
