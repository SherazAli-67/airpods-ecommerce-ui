import 'package:airpods_app/core/app_textstyles.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Home screen", style: AppTextStyles.headingTextStyle,),);
  }
}