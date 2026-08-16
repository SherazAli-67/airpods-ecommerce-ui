import 'package:airpods_app/core/models/product_model.dart';
import 'package:airpods_app/providers/favorites_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../core/app_colors.dart';

class FavoriteIconWidget extends StatelessWidget {
  const FavoriteIconWidget({
    super.key,
    required this.product,
    this.icon,
    this.bgColor
  });
  final ProductModel product;
  final String? icon;
  final Color? bgColor;
  @override
  Widget build(BuildContext context) {
    return  Consumer<FavoritesProvider>(builder: (ctx, provider, _){
      return GestureDetector(
        onTap: ()=> provider.toggleFavorites(id: product.id),
        child: Container(
            decoration: BoxDecoration(
              shape: .circle,
              color: bgColor ?? AppColors.whiteColor,
            ),
            padding: .all(8),
            child: icon != null ? SvgPicture.asset(icon!) : provider.isFavorite(product.id) ? Icon(Icons.favorite, color: Colors.black,) :  Icon(Icons.favorite_border_rounded)
        ),
      );
    });
  }
}
