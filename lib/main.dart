import 'package:flutter/material.dart';
import 'package:team2_keyboardshop_flutter/screens/forgotpass_screen.dart';
import 'package:team2_keyboardshop_flutter/screens/profile.dart';
import 'package:team2_keyboardshop_flutter/screens/setting_screen.dart';
import 'package:provider/provider.dart';
import './screens/cart_screen.dart';
import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';
import './providers/products.dart';
import './providers/cart.dart';
import './providers/orders.dart';
import './screens/orders_screen.dart';
import './screens/signin_screen.dart';
import './screens/signup_screen.dart';
import './screens/profile.dart';
import './screens/setting_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lat',
          ),
          home: LoginScreen(),
          routes: {
            ProductsOverviewScreen.routeName: (ctx) => const ProductsOverviewScreen(),
            ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),

          }),
    );
  }
}