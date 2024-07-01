
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shawermer/Features/Home/presentation/manager/cubit/order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(const OrderState());

  void addItem(String type) {
    final updatedOrders = Map<String, int>.from(state.orders);
    if (updatedOrders.containsKey(type)) {
      updatedOrders[type] = updatedOrders[type]! + 1;
    } else {
      updatedOrders[type] = 1;
    }
  emit  (OrderState(orders: updatedOrders));
  }

  void removeItem(String type) {
    final updatedOrders = Map<String, int>.from(state.orders);
    if (updatedOrders.containsKey(type) && updatedOrders[type]! > 0) {
      updatedOrders[type] = updatedOrders[type]! - 1;
      if (updatedOrders[type] == 0) {
        updatedOrders.remove(type);
      }
      emit(OrderState(orders: updatedOrders));
    }
  }

  int get totalPrice {
    return state.orders.entries
        .map((entry) => entry.value * 100) // Example price calculation
        .fold(0, (sum, element) => sum + element);
  }
}
