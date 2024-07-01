import 'package:equatable/equatable.dart';

class ConditionState extends Equatable {
  final String selectedCondition;

  const ConditionState({required this.selectedCondition});

  @override
  List<Object?> get props => [selectedCondition];

  ConditionState copyWith({String? selectedCondition}) {
    return ConditionState(
      selectedCondition: selectedCondition ?? this.selectedCondition,
    );
  }
}
