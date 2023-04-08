import 'package:flutter/material.dart';
import 'package:session7assignment4/model/food_order_model.dart';
import 'package:session7assignment4/utils/variable_utils.dart';
import 'package:session7assignment4/widget/food_order_list_widget.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('IDR ${FoodOrder.totalPrice()}')
      ),
      body: Padding(
        padding: EdgeInsets.all(Variable.defaultWidgetPadding),
        child: const FoodOrderList(),
      ),
    );
  }
}