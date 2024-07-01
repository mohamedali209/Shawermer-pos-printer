import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/condition_state.dart';

class ConditionCubit extends Cubit<ConditionState> {
  ConditionCubit() : super(const ConditionState(selectedCondition: ''));

  void selectCondition(String condition) {
    emit(state.copyWith(selectedCondition: condition));
  }
}
