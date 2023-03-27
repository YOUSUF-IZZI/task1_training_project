import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/components/recipe_card.dart';
import 'package:task1/widgets/custom_floating_button.dart';
import 'package:task1/widgets/my_list_view.dart';
import '../components/loge_bar.dart';
import '../components/search_bar.dart';
import '../widgets/custom_navigation_bar.dart';


class RecipesPage extends StatefulWidget {
  const RecipesPage({Key? key}) : super(key: key);
  @override
  State<RecipesPage> createState() => _RecipesPageState();
}
class _RecipesPageState extends State<RecipesPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    List<String> recipesList= [
      'Pastries',
      'Grills',
      'Soups',
      'All'
    ];
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 4.h ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_image.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              LogoBar(),
              SizedBox(height: 9.17.h,),
              Text('Recipes', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700), textAlign: TextAlign.center),
              SizedBox(height: 4.h,),
              Text('List of Shared Recipes', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500, letterSpacing: 0.5.sp), textAlign: TextAlign.center),
              SizedBox(height: 28.h,),
              SearchBar(),
              SizedBox(height: 17.h,),
              MyListView(items: recipesList),
              SizedBox(height: 17.h,),
              Stack(
                children: [
                  RecipeCard(),
                  Positioned(
                    right: 0, bottom: 0,
                    child: CircleAvatar(
                      radius: 30.sp,
                      backgroundColor: Color(0xff0F1B32),
                      child: Image(image: AssetImage('assets/icons/book.png',),height: 40.h, width: 40.w,),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h,)
             ],
          ),
        ),
      ),
    );
  }
}








