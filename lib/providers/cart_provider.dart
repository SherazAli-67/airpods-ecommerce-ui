import 'package:airpods_app/core/app_data.dart';
import 'package:airpods_app/core/models/cart_item_model.dart';
import 'package:airpods_app/core/models/product_model.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier{
  List<CartItemModel> cartItems = [];

  CartProvider(){
    cartItems = AppData.cartItems;
  }

  String getTotalPrice(){
   double total = 0;
   for (var item in cartItems) {
     total += item.quantity * item.product.price;
   }
   return '\$${total.toStringAsFixed(2)}';
  }

  void onIncreaseQuantityTap({required CartItemModel cartItem}){
    int index = cartItems.indexWhere((item)=> item.id == cartItem.id);

    CartItemModel updatedCartItem = cartItem.copyWith(quantity: cartItem.quantity+1);
    cartItems[index] = updatedCartItem;
    notifyListeners();
  }

  void onDecreaseQuantityTap({required CartItemModel cartItem}){
    if(cartItem.quantity == 1){
      return;
    }
    int index = cartItems.indexWhere((item)=> item.id == cartItem.id);
    CartItemModel updatedCartItem = cartItem.copyWith(quantity: cartItem.quantity-1);
    cartItems[index] = updatedCartItem;
    notifyListeners();
  }
}