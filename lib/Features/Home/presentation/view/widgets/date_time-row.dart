import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; 
import 'package:shawermer/core/styles.dart';

class Dateandtimesecrow extends StatelessWidget {
  const Dateandtimesecrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd/MM/yyyy').format(now); 
    String formattedTime = DateFormat('hh:mm a').format(now);   

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '545',
                style: AppStyles.bold24(context),
              ),
              Text(
                '#54545',
                style: AppStyles.bold12(context),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Date', style: AppStyles.regular12(context)),
                  const SizedBox(width: 5),
                  Text(
                    formattedDate, 
                    style: AppStyles.bold12(context),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('Time', style: AppStyles.regular12(context)),
                  const SizedBox(width: 5),
                  Text(
                    formattedTime, 
                    style: AppStyles.bold12(context),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
