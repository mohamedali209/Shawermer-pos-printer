import 'package:flutter/material.dart';

class PlusorminusContainer extends StatelessWidget {
  const PlusorminusContainer({
    super.key,
    this.icon,
  });
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(15)),
      child: Icon(icon, color: Colors.white),
    );
  }
}
