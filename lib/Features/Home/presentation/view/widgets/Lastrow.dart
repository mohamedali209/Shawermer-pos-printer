import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/visaorcashcubit/visaorcash_cubit.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/visaorcashcubit/visaorcash_state.dart';

class VerifiedornotwithType extends StatelessWidget {
  const VerifiedornotwithType({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerificationTypeCubit, VerificationTypeState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(3, 0, 2.9, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF333333),
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(10.7),
                  child: SvgPicture.asset(
                    'assets/images/check.svg',
                  ),
                ),
              ),
            ),
            Text(
              state.verificationType.toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        );
      },
    );
  }
}
