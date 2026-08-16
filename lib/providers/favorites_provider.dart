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
}