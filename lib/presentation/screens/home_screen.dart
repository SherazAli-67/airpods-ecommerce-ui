import 'package:airpods_app/constants/string_const.dart';
import 'package:airpods_app/core/app_colors.dart';
import 'package:airpods_app/core/app_data.dart';
import 'package:airpods_app/core/app_icons.dart';
import 'package:airpods_app/core/app_textstyles.dart';
import 'package:airpods_app/presentation/widgets/product_item_widget.dart';
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
            Expanded(child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
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
                ),
                SliverToBoxAdapter(
                    child: const SizedBox(height: 24,)
                ),
                SliverToBoxAdapter(
                  child: Text("Recommended for you", style: AppTextStyles.subHeadingTextStyle,),
                ),
                SliverToBoxAdapter(
                    child: const SizedBox(height: 8,)
                ),
                SliverGrid(
                    delegate: SliverChildBuilderDelegate(childCount: AppData.products.length, (ctx, index) => ProductItemWidget(product: AppData.products[index])),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.6),
                ),
              ],
            )),
      ]),
    );
  }

  Widget _buildCategoriesRow({required String category}) {
    return Text(category, style: AppTextStyles.regularTextStyle.copyWith(fontWeight: .w500),);
  }
}
