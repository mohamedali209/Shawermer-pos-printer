import 'package:flutter/material.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/third_row.dart';

class Fourthrow extends StatelessWidget {
  const Fourthrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Fourthrowitem(
            text: 'client note',
          ),
          SizedBox(
            height: 10,
          ),
          Fourthrowitem(text: 'admin:')
        ],
      ),
    );
  }
}
