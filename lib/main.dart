import 'package:e_commerce_app_ui/pages/ItemPage.dart';
import 'package:e_commerce_app_ui/pages/cart_page.dart';
import 'package:e_commerce_app_ui/pages/home_page.dart';
import 'package:e_commerce_app_ui/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App UI',
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        "/": (context) => MainScreen(),
        "cartPage" : (context) => CartPage(),
        "itemPage" : (context) => ItemPage(),
      }
    );
  }
}

