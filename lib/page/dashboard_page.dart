import 'package:flutter/material.dart';
import 'package:session7assignment4/page/order_page.dart';
import 'package:session7assignment4/utils/variable_utils.dart';
import 'package:session7assignment4/widget/food_list.widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Variable.dashboardTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(Variable.defaultWidgetPadding),
        child: const FoodList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Order()) 
          );          
        },
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}