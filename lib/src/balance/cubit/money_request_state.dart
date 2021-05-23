part of 'money_request_cubit.dart';

@immutable
abstract class MoneyRequestState {
  get requestedAmount => '0';
}

class MoneyRequestInitial extends MoneyRequestState {}

class MoneyRequestChanged extends MoneyRequestState {
  final String requestedAmount;

  MoneyRequestChanged({@required this.requestedAmount});
}
