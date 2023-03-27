import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RecipeCard extends StatelessWidget {
  const RecipeCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.sp)
        ),
        margin: EdgeInsets.only(bottom: 30.h),
        padding: EdgeInsets.only(top: 15.h, left: 25.w, right: 25.w, bottom: 16.h ),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/caesar_salad.png', height: 350.h, width: 350.w,),
            Row(
              children: [
                Image.asset('assets/icons/Like.png',height: 20.h, width: 20.w,),
                SizedBox(width: 5.w,),
                Text('1.5K', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w800, letterSpacing: 0.5.sp)),
                SizedBox(width: 13.w,),
                Image.asset('assets/icons/comment.png',height: 20.h,width: 20.w,),
                SizedBox(width: 5.w,),
                Text('250', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w800, letterSpacing: 0.5.sp)),
                SizedBox(width: 13.w,),
                Image.asset('assets/icons/share.png',height: 20.h,width: 20.w,),
                SizedBox(width: 5.w,),
                Text('25', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w800, letterSpacing: 0.5.sp)),
                Spacer(flex: 1,),
                Image.asset('assets/icons/heart.png',height: 20.h,width: 20.w,),
                SizedBox(width: 5.w,),
                Text('150', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w800, letterSpacing: 0.5.sp)),
              ],
            ),
            SizedBox(height: 4.h,),
            Text('Caesar Salad', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),),
            Text('A Caesar salad is a green salad of romaine lettuce and croutons dressed with lemon juice, olive oil, egg, Worcestershire sauce, anchovies, garlic, Dijon mustard, Parmesan cheese, and black pepper. In its original form, this salad was prepared and served',style: TextStyle(fontSize: 12.sp),),
          ],
        )
    );
  }
}
