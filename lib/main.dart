import 'package:airpods_app/app_router/app_router.dart';
import 'package:airpods_app/constants/string_const.dart';
import 'package:airpods_app/core/app_theme.dart';
import 'package:airpods_app/providers/favorites_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_)=> FavoritesProvider(),child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: StringConst.appTitle,
      theme: AppTheme.lightTheme,
      builder: (ctx, child)=> child!,
      routerConfig: appRouter,
    );
  }
}
