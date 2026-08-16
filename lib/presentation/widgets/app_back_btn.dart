import 'package:flutter/material.dart';

import '../../core/app_textstyles.dart';

class AppBackBtn extends StatelessWidget {
  const AppBackBtn({
    super.key,
    this.title = 'Headphones'
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        GestureDetector(
            onTap: ()=> Navigator.pop(context),
            child: Icon(Icons.arrow_back,)),
        Text(title, style: AppTextStyles.subHeadingTextStyle,),
        const SizedBox(width: 40,)
      ],
    );
  }
}