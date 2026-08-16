import 'package:airpods_app/core/app_colors.dart';
import 'package:airpods_app/core/app_textstyles.dart';
import 'package:airpods_app/core/models/product_model.dart';
import 'package:airpods_app/presentation/widgets/favorite_icon_widget.dart';
import 'package:flutter/material.dart';

class FavoriteProductItemWidget extends StatelessWidget{
  const FavoriteProductItemWidget({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minLeadingWidth: 50,
          contentPadding: .symmetric(horizontal: 10),
          leading: Container(
            decoration: BoxDecoration(
              color: AppColors.secondaryBgColor,
              borderRadius: .circular(24)
            ),
            padding: .all(8),
            child: Hero(
                tag: '${product.productImg}_${product.id}',
                child: Image.asset(product.productImg)),
          ),
          title: Text('\$${product.price}', style: AppTextStyles.subHeadingTextStyle.copyWith(fontSize: 18),),
          titleAlignment: .center,
          subtitle: Column(
            crossAxisAlignment: .start,
            children: [
              Text(product.title, style: AppTextStyles.regularTextStyle.copyWith(fontWeight: .bold),),
              Text(product.modelName, style: AppTextStyles.smallTextStyle.copyWith(fontWeight: .w500, color: AppColors.greyColor),),
            ],
          ),
          trailing: FavoriteIconWidget(product: product, bgColor: AppColors.secondaryBgColor,)
        ),
        Divider(color: AppColors.greyColor.withValues(alpha: 0.1),)
      ],
    );
  }
}