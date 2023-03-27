import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key,});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 33.sp,
      backgroundColor: Color(0xffE7E8FE),
      child: FloatingActionButton(
        backgroundColor: Color(0xff575E71),
        child: ImageIcon(AssetImage('assets/icons/floating_action_button.png'),),
        onPressed: (){
          Navigator.of(context).pushNamed('AddItemPage');
        },
      ),
    );
  }
}