import 'package:e_commerce_app_ui/widget/CartAppBar.dart';
import 'package:e_commerce_app_ui/widget/CartItemSamples.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CartAppBar(),
            Expanded(
              child: SingleChildScrollView(

                child: Container(
                  padding: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      color: Color(0xFFEDECF2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35)
                      )
                  ),
                  child: Column(
                    children: [
                      CartItemSamples(),
                      Container(
                        // decoration: BoxDecoration(
                        //   color: Color(0xFF4C54A5),
                        //     borderRadius: BorderRadius.circular(20)
                        // ),
                        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF4C54A5),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Add Coupon Code",
                                style: TextStyle(
                                    color: Color(0xFF4C54A5),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                              ),)
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          height: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total:",
                    style: TextStyle(
                        color: Color(0xFF4C54A5),
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    ),
                  ),
                  Text("\$255",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF4C54A5),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text("Check Out",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
