import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ImageUploading extends StatelessWidget {
  const ImageUploading({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: <Widget> [
            CircleAvatar(
              radius: 125,
              child: Image(image: AssetImage('assets/images/pizza.png')),
            ),
            Positioned(
                top:  175, right: 0, bottom: 25,
                child:
                CircleAvatar(
                  backgroundColor: Color(0xff575E71),
                  radius: 25.sp,
                  child: Icon(Icons.add,color: Colors.white,),
                )
            ),
          ],
        ),
      ),
    );
  }
}
