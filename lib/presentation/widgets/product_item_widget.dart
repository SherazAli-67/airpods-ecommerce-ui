import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app_router/app_router.dart';
import '../../core/app_colors.dart';
import '../../core/app_textstyles.dart';
import '../../core/models/product_model.dart';
import 'favorite_icon_widget.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> context.push(NamedRoutes.productDetail.routeName, extra:  product),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 8,
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.secondaryBgColor,
                borderRadius: .circular(24)
            ),
            padding: .all(8),
            child: Stack(
              children: [
                Hero(
                    tag: product.productImg,
                    child: Image.asset(product.productImg, fit: .cover,)),
                Align(
                  alignment: .topRight,
                  child: FavoriteIconWidget(product: product,),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: .start,
            spacing: 4,
            children: [
              Text('\$${product.price}', style: AppTextStyles.subHeadingTextStyle.copyWith(fontWeight: .bold, fontSize: 18),),
              Text(product.title, style: AppTextStyles.regularTextStyle.copyWith(fontWeight: .w600),),
              Text(product.modelName, style: AppTextStyles.regularTextStyle.copyWith(color: AppColors.greyColor),),
            ],
          )
        ],
      ),
    );
  }
}