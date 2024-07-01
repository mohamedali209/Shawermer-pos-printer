import 'package:flutter/material.dart';
import 'package:shawermer/Features/Home/presentation/view/home_view.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: double.infinity,
      width: double.infinity,
      child: Image.asset('assets/images/imagelogo.png'),
    );
  }

  void navigate() {
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Homescreen(),
      ));
    });
  }
}
