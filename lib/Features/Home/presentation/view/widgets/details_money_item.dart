import 'package:flutter/material.dart';
import 'package:shawermer/core/styles.dart';

class Detailmoneyitem extends StatelessWidget {
  const Detailmoneyitem({
    super.key,
    required this.title,
    required this.money,
  });
  final String title;
  final String money;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:AppStyles.bold12(context),
              ),
              Text('$money EGP',
                  style: AppStyles.bold12(context))
            ],
          ),
        ],
      ),
    );
  }
}
