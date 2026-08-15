import 'package:airpods_app/core/app_textstyles.dart';
import 'package:flutter/cupertino.dart';

class CartScreen extends StatelessWidget{
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Cart screen", style: AppTextStyles.headingTextStyle,),);
  }
}