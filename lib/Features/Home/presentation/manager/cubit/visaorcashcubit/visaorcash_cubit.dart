import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/visaorcashcubit/visaorcash_state.dart';

class VerificationTypeCubit extends Cubit<VerificationTypeState> {
  VerificationTypeCubit() : super(VerificationTypeState('None'));

  void setVerificationType(String type) {
    emit(VerificationTypeState(type));
  }
}