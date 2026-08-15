import 'package:airpods_app/core/app_icons.dart';
import 'package:airpods_app/core/models/product_model.dart';

class AppData {
  static List<String> get categories => [
    'All', 'Audio', 'Drones + Electronics', 'Photo + Video'
  ];

  
  static List<ProductModel> get products => [
    ProductModel(productImg: AppIcons.wirelessHeadphones1, title: 'SONY Premium Wireless Headphones', modelName: 'Model: WH-1000XM4, Black', price: 349.99),
    ProductModel(productImg: AppIcons.wirelessHeadphones2, title: 'SONY Premium Wireless Headphones', modelName: 'Model: WH-1000XM4, Beige', price: 349.99),
    // ProductModel(productImg: AppIcons.wirelessHeadphones2, title: 'SONY Premium Wireless Headphones', modelName: 'Model: WH-1000XM4, Beige', price: 349.99),
    // ProductModel(productImg: AppIcons.wirelessHeadphones1, title: 'SONY Premium Wireless Headphones', modelName: 'Model: WH-1000XM4, Black', price: 349.99),

  ];
}