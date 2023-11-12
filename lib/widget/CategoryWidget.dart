import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
   CategoryWidget({super.key});


  List list = [
    {
      "name" : "Bag",
      "image":"images/bag.jpg"
    },
    {
      "name" : "T-Shirt",
      "image":"images/tshirt.jpg"
    },
    {
      "name" : "Watch",
      "image":"images/watch.jpg"
    },
    {
      "name" : "Jeans",
      "image":"images/jeans.jpg"
    },
    {
      "name" : "Shoes",
      "image":"images/shoes.jpg"
    },
    {
      "name" : "jewelry",
      "image":"images/juwelary.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 60,
      child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.symmetric(horizontal : 10),
          padding: EdgeInsets.symmetric(vertical : 5, horizontal: 10),
          height: 50,
          // width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(list[index]['image'], width: 40, height: 40,),
              Text(
                list[index]['name'],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Color(0xFF4C53A5)
                ),
              )
            ],
          ),
        );
      }, separatorBuilder: (context,index){

        return SizedBox(width: 5,);

            // if(index==2){
            //   return Container(
            //     height: 10,
            //     width: 10,
            //     color: Colors.teal,
            //   );
            // }else{
            //   return SizedBox(width: 5,);
            // }



      }, itemCount: list.length),
    );
  }
}
