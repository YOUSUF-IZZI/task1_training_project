import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/screens/my_profile.dart';
import 'package:task1/screens/recipes_page.dart';
import 'package:task1/screens/storage_tips_page.dart';
import 'my_refrigerator_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //To control selected item index
  int bnbIndexNumber = 1;
  //List for navigation
  List<Widget> pagesList = [
    MyRefridgeratorPage(),
    RecipesPage(),
    SrorageTipsPage(),
    MyProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CircleAvatar(
        radius: 35.sp,
        backgroundColor: Color(0xffE7E8FE),
        child: FloatingActionButton(
          backgroundColor: Color(0xff575E71),
          child: ImageIcon(
            AssetImage(
              'assets/icons/floating_action_button.png',
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('AddItemPage');
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //BottomNavigationBar
      bottomNavigationBar: SizedBox(
        height: 75.h,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.sp),
              topRight: Radius.circular(20.sp)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, //if we use more than one item
            backgroundColor: Color(0xff76517B),
            currentIndex: bnbIndexNumber,
            //Colors
            selectedItemColor: Color(0xff2D0E34),
            unselectedItemColor: Colors.white,
            //Sizes
            iconSize: 30.sp,
            //styles
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),

            onTap: (int index) {
              setState(() {
                bnbIndexNumber = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                label: 'Refrigerator',
                icon: ImageIcon(
                  AssetImage('assets/icons/refrigerator.png'),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Recipes',
                icon: ImageIcon(AssetImage('assets/icons/recipes.png')),
              ),
              BottomNavigationBarItem(
                label: 'Storage Tips',
                icon: ImageIcon(AssetImage('assets/icons/sorage_tips.png')),
              ),
              BottomNavigationBarItem(
                label: 'My Profile',
                icon: ImageIcon(AssetImage('assets/icons/my_profile.png')),
              ),
            ],
          ),
        ),
      ),
      // To control navigation between pages
      body: pagesList.elementAt(bnbIndexNumber),
    );
  }
}
