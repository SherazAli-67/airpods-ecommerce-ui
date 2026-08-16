import 'package:airpods_app/constants/string_const.dart';
import 'package:airpods_app/core/app_colors.dart';
import 'package:airpods_app/core/app_icons.dart';
import 'package:airpods_app/core/app_textstyles.dart';
import 'package:airpods_app/core/models/product_model.dart';
import 'package:airpods_app/presentation/widgets/favorite_icon_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/app_back_btn.dart';

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
            AppBackBtn(),
            Container(
              decoration: BoxDecoration(
                color: AppColors.secondaryBgColor,
                borderRadius: .circular(24)
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: .center,
                    child: Hero(
                      tag: '${product.productImg}_${product.id}',
                      child: Image.asset(product.productImg, fit: .cover, height: size.height*0.4,),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Column(
                      spacing: 15,
                      children: [
                        FavoriteIconWidget(product: product,),
                        FavoriteIconWidget(icon: AppIcons.icCart, product: product,),
                      ],
                    ),
                  )
                ],
              ),
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