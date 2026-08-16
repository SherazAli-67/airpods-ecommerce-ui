import 'package:airpods_app/core/app_icons.dart';
import 'package:airpods_app/core/models/product_model.dart';

class AppData {
  static List<String> get categories => [
    'All', 'Audio', 'Drones + Electronics', 'Photo + Video'
  ];

  
  static List<ProductModel> get products => [
    ProductModel(id: '1', productImg: AppIcons.headphonesBlue, title: 'SONY Premium Wireless Headphones', modelName: 'Model: WH-1000XM4, Blue', price: 349.99),
    ProductModel(id: '2',productImg: AppIcons.headphonesGreen, title: 'SONY Premium Wireless Headphones', modelName: 'Model: WH-1000XM4, Green', price: 349.99),
    ProductModel(id: '3',productImg: AppIcons.headphonesGrey, title: 'SONY Premium Wireless Headphones', modelName: 'Model: WH-1000XM4, Grey', price: 349.99),
    ProductModel(id: '4',productImg: AppIcons.headphonesPurple, title: 'SONY Premium Wireless Headphones', modelName: 'Model: WH-1000XM4, Purple', price: 349.99),
    ProductModel(id: '5',productImg: AppIcons.headphonesRed, title: 'SONY Premium Wireless Headphones', modelName: 'Model: WH-1000XM4, Red', price: 349.99),
    ProductModel(id: '6',productImg: AppIcons.headphonesYellow, title: 'SONY Premium Wireless Headphones', modelName: 'Model: WH-1000XM4, Yellow', price: 349.99),
  ];

  static List<ProductModel> get browsingProducts => [
    ProductModel(id: '7',productImg: AppIcons.airPods, title: 'AirPods Pro', modelName: 'Model: AirPods Pro, White', price: 99.9),
    ProductModel(id: '8',productImg: AppIcons.earPhones, title: 'Earphones', modelName: 'Model: Earphones, White', price: 49.9),
    ProductModel(id: '9', productImg: AppIcons.headphonesBlue, title: 'SONY Premium Wireless Headphones', modelName: 'Model: WH-1000XM4, Blue', price: 349.99),
    ProductModel(id: '10',productImg: AppIcons.headphonesGreen, title: 'SONY Premium Wireless Headphones', modelName: 'Model: WH-1000XM4, Green', price: 349.99),
    ProductModel(id: '11',productImg: AppIcons.speaker, title: 'Speaker', modelName: 'Model: WH-1000XM4, Blue', price: 99.99),
    ProductModel(id: '12',productImg: AppIcons.airPodsMax, title: 'Apple AirPods Max', modelName: 'Model: Apple AirPods Max', price: 99.99),
  ];
}