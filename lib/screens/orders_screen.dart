
  
import 'package:flutter/material.dart';
import 'package:kleyboardshop/widgets/bottom_menu_bar.dart';
import '../widgets/bottom_menu_bar.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      bottomNavigationBar: BottomMenuBar(),
      body:  Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                loadedProduct.description,
                style: const TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
    );
  }