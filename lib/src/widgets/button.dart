import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../values/colors.dart';

class Button extends StatelessWidget {
  final String title;
  const Button({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 134.w,
    height: 37.h,
    decoration:  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4.r),),
    color: ColorPallete.blueColor),
    child: Center(child: Text(title, style: TextStyle(fontSize: 13.sp,
    color: ColorPallete.whiteColor,
                      fontWeight: FontWeight.w700),)),);
  }
}