import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/order_cubit.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/order_state.dart';
import 'package:shawermer/Features/Home/presentation/view/widgets/plus_minus_container.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.type,
  });

  final String type;
 
  @override
  Widget build(BuildContext context) {
    final orderCubit = context.read<OrderCubit>();
 
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                type,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () => orderCubit.removeItem(type),
            child: const PlusorminusContainer(icon: Icons.remove),
          ),
          const SizedBox(width: 10.0),
          BlocBuilder<OrderCubit, OrderState>(
            builder: (context, state) {
              return Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '${state.orders[type] ?? 0}',
                  style: const TextStyle(fontSize: 24.0),
                ),
              );
            },
          ),
          const SizedBox(width: 10.0),
          SizedBox(
            child: GestureDetector(
              onTap: () => orderCubit.addItem(type),
              child: const PlusorminusContainer(icon: Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
