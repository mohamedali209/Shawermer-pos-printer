import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shawermer/core/styles.dart';

class Fixedtwo extends StatelessWidget {
  const Fixedtwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          'www.shawarmar.net',
          style: AppStyles.bold15(context),
        ),
        const SizedBox(
          height: 5,
        ),
        SvgPicture.asset('assets/images/Isolation_Mode.svg'),
        const SizedBox(
          height: 5,
        ),
         Text(
          'Thank you',
          style: AppStyles.bold20(context),
        )
      ],
    );
  }
}
