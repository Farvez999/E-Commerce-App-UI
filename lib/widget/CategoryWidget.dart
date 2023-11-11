import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 200,
      child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.symmetric(horizontal : 10),
          padding: EdgeInsets.symmetric(vertical : 5, horizontal: 10),
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/bag.jpg", width: 40, height: 40,),
              Text(
                "Bag",
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


            if(index==2){
              return Container(
                height: 10,
                width: 10,
                color: Colors.teal,
              );
            }else{
              return SizedBox(width: 5,);
            }



      }, itemCount: 8),
    );
  }
}
