import 'package:flutter/material.dart';
import 'package:shawermer/Features/Home/presentation/view/payment_view.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/conditions_row.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/menu_column.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/visa_cash.dart';
import 'package:shawermer/core/widgets/custom_buttom.dart';

class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Center(child: Menucolumn()),
        const SizedBox(
          height: 15,
        ),
        const Conditions(),
        const SizedBox(
          height: 10,
        ),
        const Visaorcash(),
        const Spacer(),
        CustomButton(
          text: 'Complete',
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Paymentscreen(),
          )),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
