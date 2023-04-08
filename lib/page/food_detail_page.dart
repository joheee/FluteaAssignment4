import 'package:flutter/material.dart';
import 'package:session7assignment4/model/food_model.dart';
import 'package:session7assignment4/utils/variable_utils.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({super.key, required this.food});
  final Food food;

  @override 
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  
  int _amount = 1;

  void _incrementAmount() {
    setState(() {
      _amount++;
    });
  }

  void _decrementAmount() {
    setState(() {
      if (_amount > 1) {
        _amount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = widget.food.price * _amount;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.food.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Text(
                '\$${widget.food.price.toStringAsFixed(2)}',
                style: TextStyle(fontSize: Variable.defaultFontSize),
              ),
            ),
          ),
          SizedBox(height: Variable.defaultSizedBoxSize),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: _decrementAmount,
              ),
              Text('$_amount'),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: _incrementAmount,
              ),
            ],
          ),
          SizedBox(height: Variable.defaultSizedBoxSize),
          Expanded(
            child: Center(
              child: Text(
                'Total Price: IDR ${totalPrice.toStringAsFixed(2)}',
                style: TextStyle(fontSize: Variable.defaultFontSize),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Variable.defaultWidgetPadding),
            child: ElevatedButton(
              onPressed: () {
                widget.food.addToCart(_amount);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('add ${widget.food.name} to cart!!'),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
              child: const Text('Order'),
            ),
          )
        ],
      ),
    );
  }
}