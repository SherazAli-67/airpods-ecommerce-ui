import 'package:airpods_app/core/app_textstyles.dart';
import 'package:airpods_app/presentation/widgets/favorite_product_item_widget.dart';
import 'package:airpods_app/providers/favorites_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: 16, vertical: 24),
      child: Column(
        spacing: 14,
        children: [
          Text("Favorites", style: AppTextStyles.subHeadingTextStyle),
          Expanded(
            child: Consumer<FavoritesProvider>(
              builder: (context, provider, _) {
                return ListView.separated(
                  itemBuilder: (ctx, index) => FavoriteProductItemWidget(product: provider.favoriteProducts[index]),
                  separatorBuilder: (ctx, index) => const SizedBox(height: 8),
                  itemCount: provider.favoriteProducts.length,
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
