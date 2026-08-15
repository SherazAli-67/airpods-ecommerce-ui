import 'package:flutter/material.dart';

import '../constants/string_const.dart';
import 'app_colors.dart';

class AppTheme{
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.whiteColor,
    fontFamily: StringConst.appFontFamily,
    bottomNavigationBarTheme: bottomNavigationBarThemeData,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(99)),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
        iconSize: 24
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      leadingWidth: 65,
    ),
    cardTheme: CardThemeData(
        elevation: 0,
        color: Colors.white,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20))
    ),
  /*  dialogTheme: DialogThemeData(
        elevation: 0,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(NumberConst.dialogRadius))
    ),*/
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
    ),
  );

  static BottomNavigationBarThemeData bottomNavigationBarThemeData =  BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    elevation: 1,
    type: BottomNavigationBarType.fixed,
  );
}