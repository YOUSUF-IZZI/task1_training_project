import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/components/loge_bar.dart';
import 'package:task1/components/search_bar.dart';
import '../components/storage_tip_card.dart';
import '../widgets/custom_floating_button.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/my_list_view.dart';

class SrorageTipsPage extends StatelessWidget {
  SrorageTipsPage({Key? key}) : super(key: key);
  List<String> itemsList = [
    'Groceries', 'Dairy products', 'Meat products', 'All'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        /*bottomNavigationBar: BottomNaviBar(),
        floatingActionButton: CustomFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/
        body: Container(
          padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h),
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
              Text('Add Tip', style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
              SizedBox(height: 4.h,),
              Text('Add Storge Tips', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
              SizedBox(height: 28.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: SearchBar(),
              ),
              SizedBox(height: 17.h,),
              MyListView(items: itemsList),
              SizedBox(height: 20.h,),
              StoraeTipCard(
                title: 'Tomatoe',
                body: 'Levy recommends storing ripe tomatoes upside down (stem-side down) on paper towels in an open container such as Tupperware, a shoe box, or a cardboard flat.',
              ),
              SizedBox(height: 17.h,),
              StoraeTipCard(
                title: 'Potato',
                body: 'As a rule of thumb, the best place to store potatoes is in a cool, dry area of your kitchen, with good ventilation and out of direct sunlight. A kitchen cupboard or closet, even the basement or garage, can all the good choices. ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
