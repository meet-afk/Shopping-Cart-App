import 'package:flutter/material.dart';
import 'package:peak_sneakers/components/shoe_tile.dart';
import 'package:peak_sneakers/models/cart.dart';
import 'package:peak_sneakers/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemsToCart(shoe);

    showDialog(context: context,
     builder: (context) => AlertDialog(
      title: Text("Added to cart"),
      content: Text("${shoe.name} has been added to your cart."),
     )
     );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
            border: Border.all(color: Colors.black),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.black,
              )
            ],
          ), 
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0, bottom: 13.0),
          child: Text("Just when they think you couldn't get any faster – you do.",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 12),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Text("Hot Picks 🔥",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("See all",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],),
        ),
        const SizedBox(height: 10,),

        Expanded(child: 
        ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
          Shoe shoe = value.getShoeList()[index];
          return ShoeTile(
            shoe:shoe, onTap: () => addShoeToCart(shoe), );
        })),
           
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 25.0, right: 25.0),
            child: Divider(
              color: Color.fromARGB(255, 237, 237, 237),
            ),
          )
      ],
    )
    );
  }
}