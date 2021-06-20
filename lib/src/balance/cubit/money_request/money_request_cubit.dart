import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'money_request_state.dart';

class MoneyRequestCubit extends Cubit<MoneyRequestState> {
  MoneyRequestCubit() : super(MoneyRequestInitial());

  void moneyRequest(String moneyRequest) =>
      emit(MoneyRequestChanged(requestedAmount: moneyRequest));
}
