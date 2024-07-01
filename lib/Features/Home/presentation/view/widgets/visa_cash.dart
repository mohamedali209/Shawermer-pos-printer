import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/visaorcashcubit/visaorcash_cubit.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/ConditionsContainervisaorcash.dart';

class Visaorcash extends StatefulWidget {
  const Visaorcash({
    super.key,
  });

  @override
  _VisaorcashState createState() => _VisaorcashState();
}

class _VisaorcashState extends State<Visaorcash> {
  late String _selectedCondition;

  @override
  void initState() {
    super.initState();
    _selectedCondition = '  None  '; // Initial selected condition
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ConditionsContainervisaorcash(
          condition: '  Visa  ',
          isSelected: _selectedCondition == '  Visa  ',
          onTap: () {
            context.read<VerificationTypeCubit>().setVerificationType('VISA');

            setState(() {
              _selectedCondition = '  Visa  ';
            });
          },
        ),
        ConditionsContainervisaorcash(
          condition: '  Cash  ',
          isSelected: _selectedCondition == '  Cash  ',
          onTap: () {
            context.read<VerificationTypeCubit>().setVerificationType('CASH');

            setState(() {
              _selectedCondition = '  Cash  ';
            });
          },
        ),
      ],
    );
  }
}
