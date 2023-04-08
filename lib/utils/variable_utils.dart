import 'package:session7assignment4/model/food_model.dart';
import 'package:session7assignment4/model/food_order_model.dart';

class Variable {
  static String dashboardTitle = 'Menu Page';
  static String orderTitle = 'Your Ordered Food';

  static double defaultCardPadding = 10.0;
  static double defaultWidgetPadding = 15.0;
  static double defaultFontSize = 24.0;
  static double defaultSizedBoxSize = 16.0;

  static List<Food> foodList = [
    Food(name: 'nasi campur BABI', price: 12000.0),
    Food(name: 'sate taichan', price: 36000.0),
    Food(name: 'es teh manis', price: 3000.0),
  ];

  static List<FoodOrder> foodOrderList = [];

}