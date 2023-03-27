import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomChip extends StatefulWidget {
  CustomChip({required this.name}) ;
  String name;
  @override
  State<CustomChip> createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      labelPadding: EdgeInsets.symmetric(horizontal: 15.w),
      label: Text(widget.name, style: TextStyle(color: _isSelected ? Colors.white : Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w400, letterSpacing: 0.5.sp),),
      selected: _isSelected,
      selectedColor: Color(0xff0F1B32),
      onSelected: (isSelected){
        setState(() {
          _isSelected= isSelected;
        });
      },
    );
  }
}
