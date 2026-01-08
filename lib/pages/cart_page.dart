import 'package:flutter/material.dart';
import 'package:peak_sneakers/components/cart_item.dart';
import 'package:peak_sneakers/models/cart.dart';
import 'package:peak_sneakers/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child)=> Padding(
      padding: const EdgeInsets.only(left:7.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            const Text('Your Cart', 
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),

            const SizedBox(height: 25,),

            Expanded(child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index){
              Shoe individualShoe = value.getUserCart()[index];

              return CartItem(shoe: individualShoe,);
            }),)
      ],),
    ));
  }
}