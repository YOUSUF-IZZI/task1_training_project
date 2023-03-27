import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ItemCard extends StatelessWidget {
  ItemCard({required this.image, required this.name, required this.expirment, required this.weight});
  String image;
  String name;
  int expirment;
  double weight;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.w, top: 6.h, bottom: 6.h, right: 20.w  ),
      height: 78.h,
      decoration: BoxDecoration(
          color: Color(0xffFEFBFF),
          borderRadius: BorderRadius.circular(15.sp)
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30.sp,
            child: Image.asset(image),
          ),
          SizedBox(width: 25.h,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(name, style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w400, letterSpacing: 0.5.sp),),
              Row(
                children: [
                  Text('${expirment} Day', style: TextStyle(
                      color: expirment <3 ? Colors.red : Color(0xff715573),
                      fontSize: 22.sp, fontWeight: FontWeight.w400, letterSpacing: 0.5.sp)),
                  SizedBox(width: 47.w,),
                  Text('${weight} Kg', style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w400, letterSpacing: 0.5.sp)),
                ],
              )
            ],
          ),
          SizedBox(width: 30.w ,),
          Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/icons/edit.png', height: 30.h, width: 30.w,),
              SizedBox(height: 5.h,),
              Image.asset('assets/icons/deleting_icon.png', height: 30.h, width: 30.w,)
            ],
          )
        ],
      ),
    );
  }
}
