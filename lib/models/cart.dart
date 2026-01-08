import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
List<Shoe> ShoeShop = [
  Shoe(
    name: "LaFrancé RNR Sneakers",
    price: "11,999",
    imagePath:"lib/images/puma-orange.png",
    description: "We’ve collected artifacts from across the unnatural world that prove without doubt that Melo is Not From Here.",
  ),
  Shoe(
    name: "Inhale Men's Sneakers",
    price: "10,999",
    imagePath: "lib/images/puma-blue.png",
    description: "The Inhale. Born in the 2000s, the Inhale first hit the scene as a performance runner.",
  ),
  Shoe(
    name: "PUMA x ASTON MARTIN",
    price: "11,999",
    imagePath: "lib/images/puma-green.png",
    description: "The PUMA x ASTON MARTIN ARAMCO F1® TEAM collection redefines trackside style with a streetwear edge.",
  ),
  Shoe(
    name: "Inverse Parallel Sneakers",
    price: "11,999",
    imagePath: "lib/images/puma-black.png",
    description: "Meet the Inverse – our most boundary-breaking silhouette yet. Inspired by the iconic Inhale, Inverse flips the script.",
  ),
];

List<Shoe> UserCart = [];

List<Shoe> getShoeList() {
  return ShoeShop;
}

List<Shoe> getUserCart() {
  return UserCart;
}

void addItemsToCart(Shoe shoe) {
  UserCart.add(shoe);
  notifyListeners();
}

void removeItemsFromCart(Shoe shoe) {
  UserCart.remove(shoe);
  notifyListeners();

}

}
