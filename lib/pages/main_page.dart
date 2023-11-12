import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce_app_ui/pages/cart_page.dart';
import 'package:e_commerce_app_ui/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Widget> page=[
    HomePage(),
    CartPage(),
    Container(),

  ];

  var pageIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      body:page[pageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index){
       setState(() {
         pageIndex=index;
       });
        },
        height: 70.0,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(CupertinoIcons.cart_fill, size: 30,color: Colors.white),
          Icon(Icons.perm_identity, size: 30,color: Colors.white),
        ],
        color: Color(0xFF4C53A5),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
