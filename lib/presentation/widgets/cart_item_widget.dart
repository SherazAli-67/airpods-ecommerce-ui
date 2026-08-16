import 'package:airpods_app/app_router/app_router.dart';
import 'package:airpods_app/core/app_colors.dart';
import 'package:airpods_app/core/app_textstyles.dart';
import 'package:airpods_app/core/models/cart_item_model.dart';
import 'package:airpods_app/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CartItemWidget extends StatelessWidget{
  const CartItemWidget({super.key, required this.cartItem});
  final CartItemModel cartItem;
  @override
  Widget build(BuildContext context) {
    final product = cartItem.product;
    return Column(
      children: [
        ListTile(
          onTap: ()=> context.push(NamedRoutes.productDetail.routeName, extra: product),
          minLeadingWidth: 50,
          contentPadding: .symmetric(horizontal: 0),
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
          trailing:  Consumer<CartProvider>(
            builder: (_, provider, _) {
              return Row(
                mainAxisSize: .min,
                spacing: 8,
                children: [
                  _buildIncreaseDecreaseBtn(onTap: ()=> provider.onDecreaseQuantityTap(cartItem: cartItem)),
                  Text('${cartItem.quantity}', style: AppTextStyles.smallTextStyle,),
                  _buildIncreaseDecreaseBtn(isIncrease: true, onTap: ()=> provider.onIncreaseQuantityTap(cartItem: cartItem))
                ],
              );
            }
          )
        ),
        Divider(color: AppColors.greyColor.withValues(alpha: 0.1),)
      ],
    );
  }

  Widget _buildIncreaseDecreaseBtn({bool isIncrease = false, required VoidCallback onTap}) {
    return IconButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(padding: .zero),
      icon: Container(
        decoration: BoxDecoration(
            borderRadius: .circular(8),
            color: AppColors.secondaryBgColor
        ),
        padding: .all(5),
        child: isIncrease ? Icon(Icons.add_rounded, size: 16,) : Icon(Icons.remove, size: 16,),
      ),
    );
  }
}