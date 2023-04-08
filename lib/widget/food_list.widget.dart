import 'package:flutter/material.dart';
import 'package:session7assignment4/utils/variable_utils.dart';
import 'package:session7assignment4/widget/food_card_widget.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Variable.foodList.length,
      itemBuilder: (context, index) {
        return FoodCard(food: Variable.foodList[index]);
      },
    );
  }
}