import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/condition_cubit.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/order_cubit.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/visaorcashcubit/visaorcash_cubit.dart';
import 'package:shawermer/Features/splash/presentation/view/splashview.dart';
import 'package:shawermer/adaptive_layout.dart';
import 'package:shawermer/core/sizeconfig.dart';
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OrderCubit(),
        ),
        BlocProvider(
          create: (context) => ConditionCubit(),
        ),
        BlocProvider(
          create: (context) => VerificationTypeCubit(),
        ),
      ],
      child: const Shawermar(),
    ),
  );

  initializePrinter();
}

void initializePrinter() async {
  await SunmiPrinter.initPrinter();
}

class Shawermar extends StatelessWidget {
  const Shawermar({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AdaptiveLayout(
          mobileLayout: (context) => const Mobilelayout(),
          tabletLayout: (context) => const Tabletlayout(),
          desktopLayout: (context) => const Tabletlayout(),
        ),
      ),
    );
  }
}

class Mobilelayout extends StatelessWidget {
  const Mobilelayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Splashscreen());
  }
}

class Tabletlayout extends StatelessWidget {
  const Tabletlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Splashscreen(),
    );
  }
}
