import 'package:flutter/material.dart';
import 'package:session7assignment4/model/food_order_model.dart';
import 'package:session7assignment4/utils/variable_utils.dart';

class FoodOrderCard extends StatefulWidget {
  const FoodOrderCard({super.key, required this.foodOrder});
  final FoodOrder foodOrder;

  @override
  State<FoodOrderCard> createState() => _FoodOrderCardState();
}

class _FoodOrderCardState extends State<FoodOrderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(Variable.defaultCardPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${widget.foodOrder.name} ${widget.foodOrder.ammount} pc(s)'),
            Text('Total: IDR ${widget.foodOrder.price * widget.foodOrder.ammount}'),
          ]
        ),
      ),
    );
  }
}