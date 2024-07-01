import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/order_cubit.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/details_money_item.dart';
import 'package:shawermer/core/styles.dart';

class Moneydetailsrow extends StatelessWidget {
  const Moneydetailsrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Detailmoneyitem(
            title: 'SUBTOTAL',
            money: context.read<OrderCubit>().totalPrice.toString(),
          ),
          const Detailmoneyitem(
            title: 'DISCOUNT',
            money: '0',
          ),
          const Detailmoneyitem(
            title: 'TAX',
            money: '0',
          ),
          const Detailmoneyitem(
            title: 'SERVICE CHARGE',
            money: '0',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TOTAL',
                  style: AppStyles.bold20(context),
                ),
                Text('${context.read<OrderCubit>().totalPrice} EGP',
                    style: AppStyles.bold20(context))
              ],
            ),
          )
        ],
      ),
    );
  }
}
