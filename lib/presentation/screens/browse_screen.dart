import 'package:airpods_app/core/app_colors.dart';
import 'package:airpods_app/core/app_textstyles.dart';
import 'package:airpods_app/presentation/widgets/app_back_btn.dart';
import 'package:flutter/material.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: 16, vertical: 24),
      child: Column(
        spacing: 24,
        children: [
          AppBackBtn(title: "Browse Products"),
          SingleChildScrollView(
            scrollDirection: .horizontal,
            child: Row(
              spacing: 8,
              mainAxisAlignment: .center,
              children: [
                _buildFilterRowItemWidget(child: Icon(Icons.filter_list, size: 18),),
                _buildFilterRowItemWidget(child: Row(
                  spacing: 2,
                  children: [
                    Text("Category", style: AppTextStyles.smallTextStyle,),
                    Icon(Icons.keyboard_arrow_down_rounded, size: 18,)
                  ],
                )),
                _buildFilterRowItemWidget(child: Row(
                  spacing: 2,
                  children: [
                    Text("Brand", style: AppTextStyles.smallTextStyle,),
                    Icon(Icons.keyboard_arrow_down_rounded, size: 18,)
                  ],
                )),
                _buildFilterRowItemWidget(child: Row(
                  spacing: 2,
                  children: [
                    Text("Price", style: AppTextStyles.smallTextStyle,),
                    Icon(Icons.keyboard_arrow_down_rounded, size: 18,)
                  ],
                )),
                _buildFilterRowItemWidget(child: Row(
                  spacing: 2,
                  children: [
                    Text("Offers", style: AppTextStyles.smallTextStyle,),
                    Icon(Icons.keyboard_arrow_down_rounded, size: 18,)
                  ],
                )),
            
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFilterRowItemWidget({required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryBgColor,
        borderRadius: .circular(12),
      ),
      padding: .symmetric(horizontal: 16, vertical: 8),
      child: child
    );
  }
}
