import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ClickableContainer extends StatefulWidget {
  ClickableContainer({required this.name, required this.containerColor}) ;
  String? name;
  Color? containerColor;

  @override
  State<ClickableContainer> createState() => _ClickableContainerState();
}

class _ClickableContainerState extends State<ClickableContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 8.49.w),
        alignment: Alignment.center,
        height: 50.h,
        decoration: BoxDecoration(
            color: widget.containerColor,
            borderRadius: BorderRadius.circular(25.sp)
        ),
        child: Text(widget.name!, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400, letterSpacing: 0.5.sp,color: Colors.white),),
      ),
      onTap: (){},
    );
  }
}
