
import 'package:equatable/equatable.dart';

class OrderState extends Equatable {
  final Map<String, int> orders;

  const OrderState({this.orders = const {}});

  @override
  List<Object?> get props => [orders];
}