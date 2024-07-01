import 'package:flutter/material.dart';

class Dashedlines extends StatelessWidget {
  const Dashedlines({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: List.generate(
          30,
          (index) => Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                color: const Color.fromARGB(255, 163, 161, 161),
                height: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
