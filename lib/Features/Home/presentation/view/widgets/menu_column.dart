import 'package:flutter/material.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/menu_item.dart';

class Menucolumn extends StatelessWidget {
  const Menucolumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MenuItem(
          type: 'köfte',
        ),
        MenuItem(
          type: 'fårikål',
        ),
        MenuItem(
          type: 'حواوشي',
        ),
        MenuItem(
          type: 'HAWAWSHI',
        ),
      ],
    );
  }
}
