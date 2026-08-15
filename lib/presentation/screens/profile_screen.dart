import 'package:airpods_app/core/app_textstyles.dart';
import 'package:flutter/cupertino.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Profile screen", style: AppTextStyles.headingTextStyle,),);
  }
}