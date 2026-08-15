import 'package:airpods_app/constants/string_const.dart';
import 'package:airpods_app/core/app_colors.dart';
import 'package:airpods_app/core/app_icons.dart';
import 'package:airpods_app/core/app_textstyles.dart';
import 'package:airpods_app/core/models/product_model.dart';
import 'package:airpods_app/presentation/widgets/favorite_icon_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget{
  const ProductDetailScreen({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
        child: Column(
          spacing: 24,
          crossAxisAlignment: .start,
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
            Stack(
              children: [
                Align(
                  alignment: .center,
                  child: Hero(
                    tag: product.productImg,
                    child: Image.asset(product.productImg, fit: .cover, height: size.height*0.4,),
                  ),
                ),
                Positioned(
                  right: 30,
                  bottom: 20,
                  child: Column(
                    spacing: 15,
                    children: [
                      FavoriteIconWidget(),
                      FavoriteIconWidget(icon: AppIcons.icCart,),

                    ],
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: .start,
              children: [
                Text('\$${product.price}', style: AppTextStyles.subHeadingTextStyle.copyWith(fontWeight: .bold),),
                Text(product.title, style: AppTextStyles.subHeadingTextStyle,),
                Text(product.modelName, style: AppTextStyles.regularTextStyle.copyWith(color: AppColors.greyColor),)
              ],
            ),
            Text(StringConst.headphonesDescription, style: AppTextStyles.smallTextStyle.copyWith(color: AppColors.greyColor, height: 1.7),)
          ],
        ),
      )),
    );
  }
}