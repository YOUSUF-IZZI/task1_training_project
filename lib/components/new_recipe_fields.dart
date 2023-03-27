import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_choice_chip.dart';
import '../widgets/image_uploading.dart';
import '../widgets/my_textfield.dart';
import '../widgets/procced_button.dart';


class NewRecipeRequiredFields extends StatelessWidget {
  const NewRecipeRequiredFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 600.h,
        child: ListView(
          padding: EdgeInsets.only(right: 28.w,left: 28.w, bottom: 60.h),
          children: [
            ImageUploading(),
            SizedBox(height: 10.h,),
            Container(
              height: 56.h,
              child: MyTextField(hintText: 'Name'),
            ),
            SizedBox(height: 10.h,),
            Container(
              height: 80.h,
              padding: EdgeInsets.only(top: 11.h, left: 18),
              decoration: BoxDecoration(
                  color: Color(0xffFEFBFF),
                  borderRadius: BorderRadius.circular(25.sp)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ingredients:',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff0F1B32),
                        letterSpacing: 0.5.sp),
                  ),
                  Row(
                    children: [
                      CustomChip(name: 'Tomato'),
                      SizedBox(width: 6.w,),
                      CustomChip(name: 'Pepper'),
                      SizedBox(width: 6.w,),
                      CustomChip(name: 'Corn'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Container(
              height: 90.h,
              child: MyTextField(hintText: 'Details..'),
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                Container(
                  height: 50.h,
                  width: 50,
                  padding: EdgeInsets.all(15.h),
                  decoration: BoxDecoration(
                    color: Color(0xffFEFBFF),
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                  child: ImageIcon(
                    AssetImage('assets/icons/right_mark.png'),
                  ),
                ),
                SizedBox(width: 5.w,),
                Text(
                  'Share recipe with community',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(height: 10.h,),
            ProccedButton(),
          ],
        ),
      ),
    );
  }
}
