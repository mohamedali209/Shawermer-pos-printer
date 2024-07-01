import 'package:flutter/material.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/home_body.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Homebody(),
    );
  }
}

