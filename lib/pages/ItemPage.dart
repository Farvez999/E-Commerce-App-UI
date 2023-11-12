import 'package:clippy_flutter/arc.dart';
import 'package:e_commerce_app_ui/widget/ItemAppBar.dart';
import 'package:flutter/material.dart';
import 'package:clippy_flutter/clippy_flutter.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(padding: EdgeInsets.all(16),
          child: Image.asset("images/bag.jpg", height: 300,),
          ),
          Arc(
            edge: Edge.TOP,
              arcType: ArcType.CONVEX,
              height: 30, child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(
                  top: 50,
                  bottom: 20
                ),
                child: Row(
                  children: [
                    Text(
                      "Product Title",
                      style: TextStyle(
                        fontSize: 28,

                      ),
                    )
                  ],
                ),
                )
              ],
            ),

          ))
        ],
      ),
    );
  }
}
