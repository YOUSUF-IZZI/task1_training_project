import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProccedButton extends StatelessWidget {
  const ProccedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.w,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff141B2C),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.sp)
            )
        ),
        child: Text('Procced', style: TextStyle(fontSize: 16.sp),),
        onPressed: (){},
      ),
    );
  }
}
