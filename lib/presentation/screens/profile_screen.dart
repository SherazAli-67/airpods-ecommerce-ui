import 'package:airpods_app/constants/string_const.dart';
import 'package:airpods_app/core/app_colors.dart';
import 'package:airpods_app/core/app_textstyles.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: .symmetric(horizontal: 16, vertical: 24), child: Column(
      spacing: 24,
      crossAxisAlignment: .start,
      children: [
        Align(
          alignment: .center,
          child: Column(
            spacing: 16,
            children: [
              Text('About Me', style: AppTextStyles.subHeadingTextStyle,),
              ClipOval(
                child: Image.network(StringConst.profilePictureUrl, height: 100, width: 100),
              ),
            ],
          ),
        ),
        Column(
          spacing: 8,
          crossAxisAlignment: .start,
          children: [
            Text("Achievements", style: AppTextStyles.subHeadingTextStyle,),
            Column(
              children: [
                _buildBulletPointAchievementItemWidget('Completed and Published 15+ Apps on the App Store and Play Store'),
                _buildBulletPointAchievementItemWidget('300+ hours on Upwork'),
                _buildBulletPointAchievementItemWidget('Top rated Freelancer on Upwork'),

              ],
            )
          ],
        )
      ],
    ),);
  }

  Widget _buildBulletPointAchievementItemWidget(String achievement) {
    return Row(
      spacing: 10,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.greyColor,
          radius: 4,
        ),
        Expanded(child: Text(achievement, style: AppTextStyles.regularTextStyle,))
      ],
    );
  }
}