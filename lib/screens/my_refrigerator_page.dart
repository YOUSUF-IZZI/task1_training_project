import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/components/item_card.dart';
import 'package:task1/components/loge_bar.dart';
import 'package:task1/components/search_bar.dart';
import 'package:task1/widgets/my_list_view.dart';

import '../widgets/custom_floating_button.dart';
import '../widgets/custom_navigation_bar.dart';

class MyRefridgeratorPage extends StatefulWidget {
  const MyRefridgeratorPage({Key? key}) : super(key: key);
  @override
  State<MyRefridgeratorPage> createState() => _MyRefridgeratorPageState();
}

class _MyRefridgeratorPageState extends State<MyRefridgeratorPage> {
  //code part
  List<String> refrigeratorItemsList = ['Groceries', 'Dairy products', 'Meat products', 'All'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       /* bottomNavigationBar: BottomNaviBar(),
        floatingActionButton: CustomFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/
        body: Container(
          padding: EdgeInsets.only(top: 4.h, right: 10.w, left: 10.w),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_image.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              LogoBar(),
              SizedBox(height: 9.17.h,),
              Text('My Refrigerator', textAlign: TextAlign.center, style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),),
              SizedBox(height: 4.h,),
              Text('List of items in my refrigerator', textAlign: TextAlign.center, style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500, letterSpacing: 0.5.sp)),
              SizedBox(height: 28.h ,),
              SearchBar(),
              SizedBox(height: 17.h,),
              MyListView(items: refrigeratorItemsList ,),
              SizedBox(height: 17.h,),
              
              ItemCard(
                  image: 'assets/icons/potatoes.png',
                  name: 'Potato',
                  expirment: 1,
                  weight: 0.25
              ),
              SizedBox(height: 17.h,),
              ItemCard(
                  image: 'assets/icons/domatos.png',
                  name: 'Tomato',
                  expirment: 10,
                  weight: 2
              ),
            ],
          ),
        ),
      ),
    );
  }
}
