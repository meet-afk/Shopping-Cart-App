import 'package:flutter/material.dart';

import 'package:peak_sneakers/models/shoe.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 300,
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(shoe.imagePath,),),

        
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(shoe.description,
                    style: TextStyle(
            
            fontSize: 14,
            color: Colors.grey[700],
                    ),),
          ),

        Padding(
          padding: const EdgeInsets.only(left: 10.0,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start ,
              children: [
                Text(shoe.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
                Text('\₹' + shoe.price,
                style: TextStyle(
                  color: Colors.grey[600],
          
                )),
                    ],
            ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                    color: Colors.black,
                  ),
                  child: Icon(Icons.add,
                  color: Colors.white,)
              ),
            ),
            
          ],),
        )
      ],),

    );
  }
}