import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/condition_cubit.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/condition_state.dart';
import 'package:shawermer/core/styles.dart';

class ConditiontrdRow extends StatelessWidget {
  const ConditiontrdRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/takeaway.svg', height: 20),
        const SizedBox(width: 5),
        BlocBuilder<ConditionCubit, ConditionState>(
          builder: (context, state) {
            return Text(
              state.selectedCondition,
              style: AppStyles.bold20(context),
            );
          },
        ),
      ],
    );
  }
}
