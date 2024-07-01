import 'package:flutter/material.dart';
import 'package:shawermer/Features/Home/presentation/manager/service/mocksunmi_printer.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/Lastrow.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/condition_trd_row.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/dashed_lines.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/date_time-row.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/fixed2.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/fixed_reciept.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/fourth_row.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/money_details_row.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/money_row.dart';
import 'package:shawermer/core/widgets/custom_buttom.dart';

class Paymentbody extends StatelessWidget {
  const Paymentbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Fixedreciept(),
          const Dateandtimesecrow(),
          const Dashedlines(),
          const ConditiontrdRow(),
          const Dashedlines(),
          const Fourthrow(),
          const Dashedlines(),
          const Moneyrow(),
          const Dashedlines(),
          const Moneydetailsrow(),
          const Dashedlines(),
          const SizedBox(
            height: 5,
          ),
          const VerifiedornotwithType(),
          const Fixedtwo(),
          const SizedBox(
            height: 5,
          ),
          CustomButton(
            onTap: () {
              printReceipt(context);
              Navigator.pop(context);
            },
            text: 'PRINT',
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
