import 'package:airpods_app/core/app_colors.dart';
import 'package:airpods_app/core/app_textstyles.dart';
import 'package:airpods_app/presentation/widgets/cart_item_widget.dart';
import 'package:airpods_app/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> CartProvider(),
      builder: (_, child) {
        return Padding(
          padding: .symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              Text("Cart", style: AppTextStyles.subHeadingTextStyle),
              Expanded(child: Consumer<CartProvider>(
                builder: (_, provider, _) {
                  return ListView.separated(itemBuilder: (ctx, index) =>
                      CartItemWidget(cartItem: provider.cartItems[index]),
                      separatorBuilder: (_, _) => const SizedBox(height: 10,),
                      itemCount: provider.cartItems.length);
                }
              )),
              Column(
                spacing: 16,
                children: [
                  Divider(color: AppColors.greyColor.withValues(alpha: 0.1),),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text("Shipping", style: AppTextStyles.regularTextStyle,),
                      Text("\$0.00", style: AppTextStyles.regularTextStyle,)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text("Total", style: AppTextStyles.subHeadingTextStyle,),
                      Consumer<CartProvider>(builder: (_, provider, _) => Text(provider.getTotalPrice(), style: AppTextStyles.subHeadingTextStyle,),)
                    ],
                  ),
                  SizedBox(
                    width: .infinity,
                    child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.black, shape: RoundedRectangleBorder(borderRadius: .circular(10))), child: Text("Checkout", style: AppTextStyles.regularTextStyle.copyWith(fontSize: 18, color: Colors.white),),),
                  )
                ],
              )
            ],
          ),
        );
      }
    );
  }
}
