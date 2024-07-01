import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shawermer/core/styles.dart';

class Fourthrowitem extends StatelessWidget {
  const Fourthrowitem({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/images/Vector.svg'),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: AppStyles.bold12(context),
        )
      ],
    );
  }
}
