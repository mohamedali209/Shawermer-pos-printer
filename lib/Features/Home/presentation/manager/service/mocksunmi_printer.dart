import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shawermer/Features/Home/presentation/manager/service/printMoneyDetailsRow.dart';

class MockSunmiPrinter {
  static Future<void> startTransactionPrint(bool clear) async {
    print("Transaction started. Clear: $clear");
  }

  static Future<void> printImage(Uint8List imageBytes) async {
    print("Printing image with ${imageBytes.length} bytes");
  }

  static Future<void> printText(String text,
      {required SunmiStyle style}) async {
    print("Printing text: $text with style: ${style.toString()}");
  }

  static Future<void> exitTransactionPrint(bool clear) async {
    print("Transaction ended. Clear: $clear");
  }
}

class SunmiStyle {
  final bool bold;
  final SunmiPrintAlign align;

  SunmiStyle({this.bold = false, this.align = SunmiPrintAlign.LEFT});

  @override
  String toString() {
    return 'bold: $bold, align: $align';
  }
}

enum SunmiPrintAlign { LEFT, CENTER, RIGHT }

Future<void> printReceipt(BuildContext context) async {
  try {
    await MockSunmiPrinter.startTransactionPrint(true);

    await printFixedOne();
    // Print and log dashed lines
    print('--------------------------------');
    await MockSunmiPrinter.printText(
      '--------------------------------',
      style: SunmiStyle(align: SunmiPrintAlign.CENTER),
    );

    // Get current date and time
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd/MM/yyyy').format(now);
    String formattedTime = DateFormat('hh:mm a').format(now);

    // Print and log date and time
    print('Date: $formattedDate');
    await MockSunmiPrinter.printText(
      'Date: $formattedDate',
      style: SunmiStyle(align: SunmiPrintAlign.LEFT),
    );
    print('Time: $formattedTime');
    await MockSunmiPrinter.printText(
      'Time: $formattedTime',
      style: SunmiStyle(align: SunmiPrintAlign.LEFT),
    );

    await printImageAndCondition(context);
    print('--------------------------------');
    await MockSunmiPrinter.printText(
      '--------------------------------',
      style: SunmiStyle(align: SunmiPrintAlign.CENTER),
    );
    print('Printing client note and admin:');
    await MockSunmiPrinter.printText('Client Note',
        style: SunmiStyle(align: SunmiPrintAlign.LEFT));
    await MockSunmiPrinter.printText('Admin:',
        style: SunmiStyle(align: SunmiPrintAlign.LEFT));
    print('--------------------------------');
    await MockSunmiPrinter.printText(
      '--------------------------------',
      style: SunmiStyle(align: SunmiPrintAlign.CENTER),
    );
    // Print money row details
    await printMoneyRow(context);
    // Print and log totals
    print('--------------------------------');
    await MockSunmiPrinter.printText(
      '--------------------------------',
      style: SunmiStyle(align: SunmiPrintAlign.CENTER),
    );
    await printMoneyDetailsRow(context);

    // Print and log dashed lines
    print('--------------------------------');
    await MockSunmiPrinter.printText(
      '--------------------------------',
      style: SunmiStyle(align: SunmiPrintAlign.CENTER),
    );
    await printFixedTwo();

    // End the transaction
    await MockSunmiPrinter.exitTransactionPrint(
        true); // Use this instead of commitTransactionPrint

    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Print succeeded')),
    );
  } catch (e) {
    // Show error message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Print failed: $e')),
    );
  }
}
