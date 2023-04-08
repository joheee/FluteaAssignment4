// ignore_for_file: file_names

import 'package:session7assignment4/model/food_order_model.dart';
import 'package:session7assignment4/utils/variable_utils.dart';

class Food {
  String name;
  double price;
  
  Food({
    required this.name, 
    required this.price
  });

  void addToCart(int ammount){
    try {
      FoodOrder findFoodOrder = FoodOrder.findFoodOrder(name);
      findFoodOrder.ammount += ammount;
    } catch (e) {
      FoodOrder currentOrdered = FoodOrder(name: name, price: price, ammount: ammount);
      Variable.foodOrderList.add(currentOrdered);
    }
  }
}