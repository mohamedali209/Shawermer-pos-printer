import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/condition_cubit.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/condition_state.dart';

class ConditionsContainer extends StatefulWidget {
  const ConditionsContainer({
    super.key,
    required this.condition,
  });

  final String condition;

  @override
  _ConditionsContainerState createState() => _ConditionsContainerState();
}

class _ConditionsContainerState extends State<ConditionsContainer> {
  @override
  Widget build(BuildContext context) {
    final conditionCubit = context.read<ConditionCubit>();

    return GestureDetector(
      onTap: () {
        conditionCubit.selectCondition(widget.condition);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<ConditionCubit, ConditionState>(
          builder: (context, state) {
            return Container(
              height: 50,
              decoration: BoxDecoration(
                color: state.selectedCondition == widget.condition
                    ? Colors.redAccent
                    : Colors.orange,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    widget.condition.trim(),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
