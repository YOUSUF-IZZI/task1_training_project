import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/widgets/clickable_container.dart';

class MyListView extends StatefulWidget {
  MyListView({required this.items});
  List<String> items ;
  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 3.w),
              padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 9.w),
              alignment: Alignment.center,
              height: 50.h,
              decoration: BoxDecoration(
                  color: selectedIndex == index ? Color(0xff575E71) : Color(0xffFAFDFF),
                  borderRadius: BorderRadius.circular(25.sp)),
              child: Text(
                widget.items[index],
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5.sp,
                    color: selectedIndex == index ? Colors.white : Color(0xff575E71)
                ),
              ),
            ),
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
