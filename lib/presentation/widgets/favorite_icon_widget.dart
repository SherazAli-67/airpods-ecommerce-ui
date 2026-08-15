import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

class FavoriteIconWidget extends StatelessWidget {
  const FavoriteIconWidget({
    super.key,
    this.isFavorite = false
  });
  final bool isFavorite;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: .circle,
        color: AppColors.whiteColor,
      ),
      padding: .all(8),
      child: isFavorite ? Icon(Icons.favorite, color: Colors.black,) :  Icon(Icons.favorite_border_rounded),
    );
  }
}
