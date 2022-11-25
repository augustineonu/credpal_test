import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../values/colors.dart';

class Merchant extends StatelessWidget {
  final String logo;
  final bool status;
  final String merchantName;
  final Color backgroundColor;
  const Merchant({
    Key? key,
    required this.logo,
    required this.status,
    required this.merchantName,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82.h,
      // width: 30.w,
      child: Column(
        children: [
          Container(
            height: 60.h,
            width: 60.w,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: backgroundColor),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: SvgPicture.asset(
                    'assets/svg/$logo',
                    //color: Colors.black,
                  ),
                ),
                status
                    ? Positioned(
                        top: 0,
                        right: 5.sp,
                      
                        child: Container(
                          height: 15.h,
                          width: 15.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            //color: Color.fromARGB(255, 49, 81, 199),
                          ),
                          child: SvgPicture.asset(
                              'assets/svg/Notification dot.svg'),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            merchantName,
            style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: ColorPallete.kBlackTextColor),
          ),
        ],
      ),
    );
  }
}
