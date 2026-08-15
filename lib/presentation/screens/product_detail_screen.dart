import 'package:airpods_app/core/app_textstyles.dart';
import 'package:airpods_app/core/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget{
  const ProductDetailScreen({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
        child: Column(
          spacing: 24,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                GestureDetector(
                    onTap: ()=> Navigator.pop(context),
                    child: Icon(Icons.arrow_back,)),
                Text("Headphones", style: AppTextStyles.subHeadingTextStyle,),
                const SizedBox(width: 40,)
              ],
            ),
            Hero(
              tag: product.productImg,
              child: Image.asset(product.productImg, fit: .cover, height: size.height*0.4,),
            ),
          ],
        ),
      )),
    );
  }
}