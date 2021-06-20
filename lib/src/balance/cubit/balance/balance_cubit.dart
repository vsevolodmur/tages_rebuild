import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tages_rebuild/src/balance/balance_repository.dart';
import 'package:tages_rebuild/src/balance/cubit/money_request/money_request_cubit.dart';

part 'balance_state.dart';

class BalanceCubit extends Cubit<BalanceState> {
  final MoneyRequestCubit moneyRequestCubit;
  final List<int> sortedBankNotesNominals = BankNotes()
      .bankNotes
      .keys
      .map(int.parse)
      .toList()
        ..sort((a, b) => -a.compareTo(b));

  BalanceCubit({@required this.moneyRequestCubit})
      : super(
          BalanceInitialState(
            bankNotes: BankNotes().bankNotes,
            bankNotesGiven: BankNotes.given().bankNotes,
          ),
        );

  void changeBalance() {
    final Map<String, int> bankNotesLeftInBank = Map.from(state.bankNotes);
    final Map<String, int> bankNotesGiven = BankNotes.given().bankNotes;
    int requestedAmount = int.parse(moneyRequestCubit.state.requestedAmount);

    int bankBalance = 0;
    bankNotesLeftInBank
        .forEach((key, value) => bankBalance += int.parse(key) * value);

    if (requestedAmount <= bankBalance) {
      sortedBankNotesNominals.forEach((nominal) {
        if (requestedAmount ~/ nominal > 0) {
          if (requestedAmount ~/ nominal <= bankNotesLeftInBank['$nominal']) {
            bankNotesGiven.update(
                '$nominal', (value) => requestedAmount ~/ nominal);
            bankNotesLeftInBank.update(
                '$nominal', (value) => value - requestedAmount ~/ nominal);
            requestedAmount =
                requestedAmount - requestedAmount ~/ nominal * nominal;
          } else {
            bankNotesGiven.update(
                '$nominal', (value) => bankNotesLeftInBank['$nominal']);
            requestedAmount =
                requestedAmount - bankNotesLeftInBank['$nominal'] * nominal;
            bankNotesLeftInBank.update('$nominal', (value) => value - value);
          }
        }
      });
    }
    if (requestedAmount == 0) {
      emit(
        BalanceChangeState(
            bankNotes: bankNotesLeftInBank, bankNotesGiven: bankNotesGiven),
      );
    } else
      emit(
        NoMoneyState(
            bankNotes: bankNotesLeftInBank, bankNotesGiven: bankNotesGiven),
      );
  }
}
