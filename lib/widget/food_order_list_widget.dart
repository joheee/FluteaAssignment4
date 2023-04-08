import 'package:flutter/material.dart';
import 'package:session7assignment4/utils/variable_utils.dart';
import 'package:session7assignment4/widget/food_order_card_widget.dart';

class FoodOrderList extends StatelessWidget {
  const FoodOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Variable.foodOrderList.length,
      itemBuilder: (context, index) {
        return FoodOrderCard(foodOrder: Variable.foodOrderList[index]);
      },
    );
  }
}