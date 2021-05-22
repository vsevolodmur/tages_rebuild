part of 'balance_cubit.dart';

@immutable
abstract class BalanceState {
  final Map<String, int> bankNotes;

  BalanceState({@required this.bankNotes});
}

class BalanceInitialState extends BalanceState {
  final Map<String, int> bankNotes;

  BalanceInitialState({@required this.bankNotes});
}

class BalanceChangeState extends BalanceState {
  final Map<String, int> bankNotes;

  BalanceChangeState({@required this.bankNotes});
}
