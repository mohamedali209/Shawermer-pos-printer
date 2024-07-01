import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/dashed_lines.dart';
import 'package:shawermer/core/styles.dart';

class Fixedreciept extends StatelessWidget {
  const Fixedreciept({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Center(
          child: SizedBox(
              width: 100, child: Image.asset('assets/images/imagelogo.png')),
        ),
         Text(
          'El mirghani branch',
          style: AppStyles.bold18(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/Phone.svg'),
             Text(
              '16447',
              style: AppStyles.bold24(context),
            ),
          ],
        ),
         Text(
          'tax No: 451451',
          style: AppStyles.regular8(context),
        ),
         Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cashier:abdessmed bouazza',
                style: AppStyles.regular8(context),
              ),
              Text(
                'Pos No: 01',
                style: AppStyles.regular8(context),
              ),
            ],
          ),
        ),
        const Dashedlines(),
      ],
    );
  }
}
