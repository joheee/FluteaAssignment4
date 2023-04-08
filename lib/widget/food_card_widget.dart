import 'package:flutter/material.dart';
import 'package:session7assignment4/model/food_model.dart';
import 'package:session7assignment4/page/food_detail_page.dart';
import 'package:session7assignment4/utils/variable_utils.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key, required this.food});
  final Food food;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => FoodDetail(food: food))
        );
      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(Variable.defaultCardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(food.name),
              Text('${food.price}')
            ]
          ),
        ),
      ),
    );
  }
}