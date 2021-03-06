import 'package:flutter/material.dart';
import 'package:team2_keyboardshop_flutter/screens/setting_screen.dart';
import 'package:team2_keyboardshop_flutter/theme/colors.dart';
import 'package:team2_keyboardshop_flutter/screens/orders_screen.dart';
import 'package:team2_keyboardshop_flutter/screens/products_overview_screen.dart';
import 'package:team2_keyboardshop_flutter/screens/profile.dart';

class BottomMenuBar extends StatefulWidget {
  BottomMenuBar({Key? key}) : super(key: key);

  @override
  _BottomMenuBarState createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: IconButton(
                icon: Icon(Icons.home_outlined, color: KColors.primary),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ProductsOverviewScreen.routeName);
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.payment, color: KColors.icon),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(OrdersScreen.routeName);
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.person_outline_rounded, color: KColors.icon),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ProFile.routeName);
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.settings, color: KColors.icon),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(SettingsPage.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}