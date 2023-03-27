import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class MyTextField extends StatelessWidget {
  MyTextField({required this.hintText}) ;
  String hintText ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container (
        height: 56.h,
        decoration: BoxDecoration(
            color: Color(0xffFEFBFF),
            borderRadius: BorderRadius.circular(15.sp)
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: 16.sp, fontWeight: FontWeight.w400,
                  color: Colors.black,
                  letterSpacing: 0.5.sp
              ),
              fillColor: Color(0xffFEFBFF),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 16.w, right: 14.w, top: 15.h, bottom: 16.h),

            ),
          ),
        ),
      ),
    );
  }
}
