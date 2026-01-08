import 'package:flutter/material.dart';
import 'package:peak_sneakers/models/cart.dart';
import 'package:peak_sneakers/models/shoe.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Shoe shoe;
   CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart(){
    //remove item from cart
    Provider.of<Cart>(context, listen: false).removeItemsFromCart(widget.shoe); 
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text('\₹' + widget.shoe.price),
        trailing:IconButton(onPressed: removeItemFromCart, icon: Icon(Icons.delete)) 
      ),
    );
  }
}