import 'package:airpods_app/constants/string_const.dart';
import 'package:airpods_app/core/app_colors.dart';
import 'package:airpods_app/core/app_data.dart';
import 'package:airpods_app/core/app_icons.dart';
import 'package:airpods_app/core/app_textstyles.dart';
import 'package:airpods_app/core/models/product_model.dart';
import 'package:flutter/material.dart';

import '../widgets/favorite_icon_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: 16, vertical: 24),
      child: Column(
          crossAxisAlignment: .start,
          spacing: 24,
          children: [
            SizedBox(
              height: 30, 
              child: ListView.separated(
              scrollDirection: .horizontal,
              itemBuilder: (ctx, index) => _buildCategoriesRow(category: AppData.categories[index]), separatorBuilder: (_, _)=> const SizedBox(width: 32,), itemCount: AppData.categories.length),
            ),
            Column(
              spacing: 8,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text("Deals of the day", style: AppTextStyles.subHeadingTextStyle,),
                    Text("See all", style: AppTextStyles.smallTextStyle.copyWith(color: AppColors.greyColor),)
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: .circular(24),
                    color: AppColors.secondaryBgColor
                  ),
                  padding: .all(8),
                  child: Stack(
                    children: [
                      Align(
                        alignment: .topRight,
                        child: FavoriteIconWidget(),
                      ),
                      Row(
                        children: [
                          Expanded(child: Image.asset(AppIcons.microphoneImg, fit: .cover,)),
                          Expanded(child: Column(
                            crossAxisAlignment: .start,
                            spacing: 12,
                            children: [
                              Text("Microphones", style: AppTextStyles.regularTextStyle.copyWith(fontWeight: .bold, color: AppColors.greyColor),),
                              Column(
                                crossAxisAlignment: .start,
                                spacing: 4,
                                children: [
                                  RichText(text: TextSpan(
                                    text: '\$${108.20} ',
                                    style: AppTextStyles.regularTextStyle.copyWith(fontSize: 20, color: Colors.red, fontFamily: StringConst.appFontFamily, fontWeight: .bold),
                                    children: [
                                      TextSpan(
                                          text: '\$${190} ',
                                          style: AppTextStyles.regularTextStyle.copyWith(fontSize: 18, color:AppColors.greyColor, decoration: .lineThrough, decorationThickness: 4, fontFamily: StringConst.appFontFamily, fontWeight: .bold)
                                      ),
                                    ]
                                  ),
                                  ),
                                  Text("RODE PodMic", style: AppTextStyles.subHeadingTextStyle.copyWith(fontSize: 16),),
                                  Text("Dynamic microphone, Speaker microphone", style: AppTextStyles.regularTextStyle.copyWith(color: AppColors.greyColor)),

                                ],
                              )
                            ],
                          ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Column(
                spacing: 8,
                crossAxisAlignment: .start,
                children: [
                  Text("Recommended for you", style: AppTextStyles.subHeadingTextStyle,),
                  Expanded(child: GridView.builder(
                    itemCount: AppData.products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10), itemBuilder: (ctx, index) {

                      ProductModel product = AppData.products[index];
                        return Container(
                          decoration: BoxDecoration(
                            color: AppColors.secondaryBgColor,
                            borderRadius: .circular(24)
                          ),
                          padding: .all(8),
                          child: Stack(
                            children: [
                              Image.asset(product.productImg),
                              Align(
                                alignment: .topRight,
                                child: FavoriteIconWidget(),
                              ),
                            ],
                          ),
                        );
                  }))
                ],
              ),
            )
      ]),
    );
  }

  Widget _buildCategoriesRow({required String category}) {
    return Text(category, style: AppTextStyles.regularTextStyle.copyWith(fontWeight: .w500),);
  }
}