// conditions.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/condition_cubit.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/condition_container.dart';

class Conditions extends StatelessWidget {
  const Conditions({super.key,});

  @override
  Widget build(BuildContext context) {
    final conditionCubit = context.read<ConditionCubit>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () => conditionCubit.selectCondition('Takeaway'),
          child: const ConditionsContainer(
            condition: 'Takeaway',
          ),
        ),
        GestureDetector(
          onTap: () => conditionCubit.selectCondition('delivery'),
          child: const ConditionsContainer(
            condition: 'delivery',
          ),
        ),
        GestureDetector(
          onTap: () => conditionCubit.selectCondition('توصيل'),
          child: const ConditionsContainer(
            condition: 'توصيل',
          ),
        ),
      ],
    );
  }
}
