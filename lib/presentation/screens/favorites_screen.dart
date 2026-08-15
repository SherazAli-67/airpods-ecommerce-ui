import 'package:airpods_app/core/app_textstyles.dart';
import 'package:flutter/cupertino.dart';

class FavoritesScreen extends StatelessWidget{
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Favorites screen", style: AppTextStyles.headingTextStyle,),);
  }
}