import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/components/loge_bar.dart';
import 'package:task1/widgets/my_list_view.dart';
import '../components/add_new_item_required_fields.dart';


class AddItemPage extends StatefulWidget {
  const AddItemPage({Key? key}) : super(key: key);
  @override
  State<AddItemPage> createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  List<String> itemsList = ['Groceries', 'Dairy products', 'Meat products', '+'];
  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
         /* bottomNavigationBar: BottomNaviBar(),
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
                Text('Add New Item', style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700), textAlign: TextAlign.center,),
                SizedBox(height: 4.h,),
                Text('Add item to your refrigerator', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                SizedBox(height: 39.h,),
                MyListView(items: itemsList ),
                SizedBox(height: 20.h,),
                NewItemFields(),
              ],
            ),
          ),
    ),
      );
  }
}

