import 'package:airpods_app/core/app_data.dart';
import 'package:airpods_app/core/models/product_model.dart';
import 'package:flutter/material.dart';

class FavoritesProvider extends ChangeNotifier{
  List<String> favorites = [];

  bool isFavorite(String model){
    return favorites.contains(model);
  }

  void toggleFavorites({required String id}){
    if(favorites.contains(id)){
      favorites.remove(id);
    }else{
      favorites.add(id);
    }
    notifyListeners();
  }

  List<ProductModel> get favoriteProducts {
    List<ProductModel> favoritesProducts = AppData.products.where((item)=> favorites.contains(item.id)).toList();
    favoritesProducts += AppData.browsingProducts.where((item)=> favorites.contains(item.id)).toList();

    return favoritesProducts;
  }
}