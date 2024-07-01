import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/condition_cubit.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/order_cubit.dart';
import 'package:shawermer/Features/Home/presentation/manager/service/mocksunmi_printer.dart';

Future<void> printMoneyDetailsRow(BuildContext context) async {
  final orderCubit = context.read<OrderCubit>();
  final total = orderCubit.totalPrice;

  // Print each detail item in the Moneydetailsrow widget
  await MockSunmiPrinter.printText(
    'SUBTOTAL: $total EGP',
    style: SunmiStyle(bold: true, align: SunmiPrintAlign.RIGHT),
  );
  await MockSunmiPrinter.printText(
    'DISCOUNT: 0 EGP',
    style: SunmiStyle(bold: true, align: SunmiPrintAlign.RIGHT),
  );
  await MockSunmiPrinter.printText(
    'TAX: 0 EGP',
    style: SunmiStyle(bold: true, align: SunmiPrintAlign.RIGHT),
  );
  await MockSunmiPrinter.printText(
    'SERVICE CHARGE: 0 EGP',
    style: SunmiStyle(bold: true, align: SunmiPrintAlign.RIGHT),
  );

  // Print total
  await MockSunmiPrinter.printText(
    'TOTAL: $total EGP',
    style: SunmiStyle(bold: true, align: SunmiPrintAlign.RIGHT),
  );
}

Future<void> printMoneyRow(BuildContext context) async {
  final orderCubit = context.read<OrderCubit>();
  final orderState = orderCubit.state;

  // Iterate through entries and print each item and price
  for (var entry in orderState.orders.entries) {
    String itemName = '${entry.value}x ${entry.key}';
    String itemPrice = '${entry.value * 100} EGP'; // Example price calculation

    // Print item name and price
    print('$itemName   $itemPrice');
    await MockSunmiPrinter.printText(
      '$itemName   $itemPrice',
      style: SunmiStyle(align: SunmiPrintAlign.LEFT),
    );
  }
}

Future<void> printFixedTwo() async {
  await MockSunmiPrinter.printText(
    'www.shawarmar.net',
    style: SunmiStyle(bold: true, align: SunmiPrintAlign.CENTER),
  );

  // Load and print the SVG image
  ByteData byteData = await rootBundle.load('assets/images/Isolation_Mode.svg');
  Uint8List imageBytes = byteData.buffer.asUint8List();
  await MockSunmiPrinter.printImage(imageBytes);

  await MockSunmiPrinter.printText(
    'Thank you',
    style: SunmiStyle(bold: true, align: SunmiPrintAlign.CENTER),
  );
}

Future<void> printFixedOne() async {
  // Load the image as bytes and convert to Uint8List
  ByteData byteData = await rootBundle.load('assets/images/imagelogo.png');
  Uint8List imageBytes = byteData.buffer.asUint8List();

  // Print and log the logo
  print('Printing logo');
  await MockSunmiPrinter.printImage(imageBytes);

  // Print and log branch name
  print('El mirghani branch');
  await MockSunmiPrinter.printText(
    'El mirghani branch',
    style: SunmiStyle(bold: true, align: SunmiPrintAlign.CENTER),
  );

  // Print and log phone and tax number
  print('Phone: 16447');
  await MockSunmiPrinter.printText(
    'Phone: 16447',
    style: SunmiStyle(bold: true, align: SunmiPrintAlign.CENTER),
  );
  print('Tax No: 451451');
  await MockSunmiPrinter.printText(
    'Tax No: 451451',
    style: SunmiStyle(align: SunmiPrintAlign.CENTER),
  );

  // Print and log cashier and POS number
  print('Cashier: abdessmed bouazza');
  await MockSunmiPrinter.printText(
    'Cashier: abdessmed bouazza',
    style: SunmiStyle(align: SunmiPrintAlign.LEFT),
  );
  print('Pos No: 01');
  await MockSunmiPrinter.printText(
    'Pos No: 01',
    style: SunmiStyle(align: SunmiPrintAlign.RIGHT),
  );
}


Future<void> printImageAndCondition(BuildContext context) async {
  try {
    // Print the image
    print('Printing image');
    ByteData byteData = await rootBundle.load('assets/images/takeaway.svg');
    Uint8List imageBytes = byteData.buffer.asUint8List();
    await MockSunmiPrinter.printImage(imageBytes);

    // Get the current condition from the ConditionCubit
    final conditionCubit = context.read<ConditionCubit>();
    final conditionState = conditionCubit.state;
    final selectedCondition = conditionState.selectedCondition;

    // Print and log condition
    print(selectedCondition);
    await MockSunmiPrinter.printText(
      selectedCondition,
      style: SunmiStyle(align: SunmiPrintAlign.CENTER),
    );
  } catch (e) {
    // Handle errors
    print('Error printing: $e');
    // You can throw the error further if needed
    throw e;
  }
}