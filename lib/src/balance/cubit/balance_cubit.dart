import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tages_rebuild/src/balance/balance_repository.dart';

part 'balance_state.dart';

class BalanceCubit extends Cubit<BalanceState> {
  BalanceCubit()
      : super(
          BalanceInitialState(bankNotes: BankNotes().bankNotes),
        );

  void changeBalance() {
    Map<String, int> newStateBankNotes = Map.from(state.bankNotes);
    newStateBankNotes.update('500 рублей', (value) => value + 1);
    emit(BalanceChangeState(bankNotes: newStateBankNotes));
  }
}
