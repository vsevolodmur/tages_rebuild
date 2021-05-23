part of 'balance_cubit.dart';

@immutable
abstract class BalanceState {
  get bankNotes => {};
  get bankNotesGiven => {};
}

class BalanceInitialState extends BalanceState {
  final Map<String, int> bankNotes;
  final Map<String, int> bankNotesGiven;

  BalanceInitialState(
      {@required this.bankNotes, @required this.bankNotesGiven});
}

class BalanceChangeState extends BalanceState {
  final Map<String, int> bankNotes;
  final Map<String, int> bankNotesGiven;

  BalanceChangeState({@required this.bankNotes, @required this.bankNotesGiven});
}

class NoMoneyState extends BalanceState {
  final Map<String, int> bankNotes;
  NoMoneyState({@required this.bankNotes});
}
