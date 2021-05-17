import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tages_rebuild/src/balance/balance_repository.dart';

part 'balance_state.dart';

class BalanceCubit extends Cubit<BalanceState> {
  final BankNotes bankNotes;
  BalanceCubit(this.bankNotes) : super(BalanceInitialState());

  // Future<void> changeBalance() async {
  //   final Map<String, int> _bankNotes = BankNotes().changeBalance();
  //   emit(BalanceChangeState(bankNotes: _bankNotes));
  // }

  void changeBalance(){}
}

// class BalanceCubit extends Cubit<BalanceState> {
//   BalanceCubit()
//       : super(
//           BalanceState(bankNotes: Balance().bankNotes),
//         );

//   void changeBalance() {
//     Map<String, int> newStateBankNotes = Map.from(state.bankNotes);
//     newStateBankNotes.update('5000 рублей', (value) => value + 1);
//     emit(BalanceState(bankNotes: newStateBankNotes));
//   }
// }
