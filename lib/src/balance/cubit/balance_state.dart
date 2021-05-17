part of 'balance_cubit.dart';

@immutable
abstract class BalanceState {}

class BalanceInitialState extends BalanceState {
  final Map<String, int> bankNotes = BankNotes().bankNotes;
}

class BalanceChangeState extends BalanceState {
  final Map<String, int> bankNotes;

  BalanceChangeState({this.bankNotes});
}
