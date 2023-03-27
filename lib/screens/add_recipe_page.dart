import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/components/loge_bar.dart';
import 'package:task1/components/new_recipe_fields.dart';
import 'package:task1/widgets/my_list_view.dart';


class AddRecipePage extends StatefulWidget {
  const AddRecipePage({Key? key}) : super(key: key);
  @override
  State<AddRecipePage> createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage>
    with TickerProviderStateMixin {
  List<String> recipesList = ['Pastries', 'Grills', 'Soups', '+'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        /*bottomNavigationBar: BottomNaviBar(),
        floatingActionButton: CustomFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/
        body: Container(
          padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h, bottom: 20.h),
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
              Text('Add new Recipe', textAlign: TextAlign.center, style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),),
              SizedBox(height: 4.h,),
              Text('Add item to your refrigerator', textAlign: TextAlign.center, style: TextStyle(color: Color(0xff575E71), fontSize: 12.sp, fontWeight: FontWeight.w500, letterSpacing: 0.5.sp)),
              SizedBox(height: 14.h,),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: MyListView(items: recipesList)),
              SizedBox(height: 10.h,),
              NewRecipeRequiredFields(),
            ],

          ),
        ),
      ),
    );
  }
}
