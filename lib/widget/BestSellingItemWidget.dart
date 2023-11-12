import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BestSellingItemWidget extends StatelessWidget {
  BestSellingItemWidget({super.key});

  List list = [
    {
      "name" : "Bag",
      "description" : "A bag is a container made of thin paper or plastic",
      "price" : "\$55",
      "image":"images/bag.jpg"
    },
    {
      "name" : "T-Shirt",
      "description" : "A bag is a container made of thin paper or plastic",
      "price" : "\$75",
      "image":"images/tshirt.jpg"
    },
    {
      "name" : "Watch",
      "description" : "A bag is a container made of thin paper or plastic",
      "price" : "\$45",
      "image":"images/watch.jpg"
    },
    {
      "name" : "Jeans",
      "description" : "A bag is a container made of thin paper or plastic",
      "price" : "\$65",
      "image":"images/jeans.jpg"
    },
    {
      "name" : "Shoes",
      "description" : "A bag is a container made of thin paper or plastic",
      "price" : "\$85",
      "image":"images/shoes.jpg"
    },
    {
      "name" : "jewelry",
      "description" : "A bag is a container made of thin paper or plastic",
      "price" : "\$105",
      "image":"images/juwelary.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      padding: EdgeInsets.symmetric(horizontal: 10),
      crossAxisCount: 2,
      itemCount: list.length,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(left: 15, right: 15,top: 10),
          margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color(0xFF4C54A5),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text(
                      "-50%",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'itemPage');
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    list[index]['image'],
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  list[index]['name'],
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF4C54A5),
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                    list[index]['description'],
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF4C54A5),
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$55",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF4C54A5),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Color(0xFF4C54A5),
                    )
                  ],
                ),)
            ],
          ),
        );
      },
    );

  }
}
