import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/app_colors.dart';

class FavoriteIconWidget extends StatelessWidget {
  const FavoriteIconWidget({
    super.key,
    this.isFavorite = false,
    this.icon
  });
  final bool isFavorite;
  final String? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: .circle,
        color: AppColors.whiteColor,
      ),
      padding: .all(8),
      child: icon != null ? SvgPicture.asset(icon!) : isFavorite ? Icon(Icons.favorite, color: Colors.black,) :  Icon(Icons.favorite_border_rounded),
    );
  }
}
