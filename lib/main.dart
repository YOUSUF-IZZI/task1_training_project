import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/screens/add_item_page.dart';
import 'package:task1/screens/home_page.dart';
import 'package:task1/screens/my_refrigerator_page.dart';
import 'package:task1/screens/recipes_page.dart';
import 'package:task1/screens/storage_tips_page.dart';


void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          routes: {
            'AddItemPage' : (context) => AddItemPage()
          },
        );
      },
    );
  }
}