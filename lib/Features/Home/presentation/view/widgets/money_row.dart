import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/order_cubit.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/order_state.dart';
import 'package:shawermer/core/styles.dart';

class Moneyrow extends StatelessWidget {
  const Moneyrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Product',
                style: AppStyles.regular12(context),
              ),
              Text(
                'Price',
                style: AppStyles.regular12(context),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          BlocBuilder<OrderCubit, OrderState>(
            builder: (context, state) {
              return Column(
                children: state.orders.entries.map((entry) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${entry.value}x ${entry.key}',
                        style: AppStyles.bold12(context),
                      ),
                      Text(
                        '${entry.value * 100} EGP', // Example price calculation
                        style: AppStyles.bold12(context),
                      ),
                    ],
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
