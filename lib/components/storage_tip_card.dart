import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class StoraeTipCard extends StatelessWidget {
  StoraeTipCard({required this.title, required this.body}) ;
  String title ;
  String body ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 25.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.sp)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w500, letterSpacing: 0.5.sp),),
          Text(body, style: TextStyle(color: Color(0xff575E71), fontSize: 12.sp, fontWeight: FontWeight.w400, letterSpacing: 0.4.sp),),
        ],
      ),
    );
  }
}
