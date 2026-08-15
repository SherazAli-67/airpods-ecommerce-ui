import 'package:airpods_app/core/app_colors.dart';
import 'package:airpods_app/core/app_icons.dart';
import 'package:airpods_app/core/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: .fixed,
          onTap: (index)=> navigationShell.goBranch(index),
          selectedItemColor: Colors.black,
          currentIndex: navigationShell.currentIndex,
          unselectedItemColor: AppColors.greyColor,
          unselectedLabelStyle: AppTextStyles.smallTextStyle.copyWith(color: AppColors.greyColor),
          selectedLabelStyle: AppTextStyles.smallTextStyle.copyWith(color: Colors.black),
          items: [
            _buildBottomNavigationBarItemWidget(icon: AppIcons.icHome, label: 'Home', index: 0),
            _buildBottomNavigationBarItemWidget(icon: AppIcons.icSearch, label: 'Browse', index: 1),
            _buildBottomNavigationBarItemWidget(icon: AppIcons.icFavorite, label: 'Favorites', index: 2),
            _buildBottomNavigationBarItemWidget(icon: AppIcons.icCart, label: 'Cart', index: 3),
            _buildBottomNavigationBarItemWidget(icon: AppIcons.icCart, label: 'Profile', index: 4),

          ]),
      body: SafeArea(child: navigationShell)
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItemWidget({required String icon, required String label, required int index}) => BottomNavigationBarItem(icon: SvgPicture.asset(icon, height: 20, width: 20, colorFilter: .mode(navigationShell.currentIndex == index ? Colors.black: AppColors.greyColor, .srcIn),), label: label, );

}