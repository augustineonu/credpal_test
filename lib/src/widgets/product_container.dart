import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../values/colors.dart';
import '../values/constants.dart';

class ProductContainer extends StatelessWidget {
  final String productImage;
  final String amount;
  final String amountLineThrough;
  final String productName;

  const ProductContainer(
      {Key? key,
      required this.productImage,
      required this.amount,
      required this.amountLineThrough,
      required this.productName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
          start: 17.h, end: 10.h, top: 14.h, bottom: 10.h),
      //padding: const EdgeInsets.only(),
      height: 174.h,
      width: 161.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     offset: const Offset(0, 1),
        //     blurRadius: 0,
        //     spreadRadius: 4.r,

        //   )
        // ]
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 73.sp,
            right: 24.sp,
            left: 23.sp,
            child: Container(
              height: 96,
              width: 112,
              decoration: BoxDecoration(
                //borderRadius: const BorderRadius.all(Radius.circular(4)),
                //color: Colors.amberAccent
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/$productImage"),
                ),
              ),
              //child: Image.asset('assets/images/phone002.png'),
            ),
          ),
          Positioned(
            left: 7.w,
            bottom: 118.h,
            child: Container(
              height: 50.h,
              width: 50.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                // image: DecorationImage(image: AssetImage("assets/images/OkayFones1.png"),
                // //assets/images/pay401.jpeg"
                // ),
              ),
              child: SvgPicture.asset(
                'assets/svg/OkayFones2.svg',
                //color: Colors.black,
              ),
            ),
          ),
          Positioned(
            bottom: 44.h,
            child: Padding(
              padding: EdgeInsets.only(left: 10.w, top: 15.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productName,
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 14.h,
                          fontWeight: FontWeight.w800,
                          color: ColorPallete.kBlackTextColor)),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 14.h,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 14.w, bottom: 14.h, top: 10.h, right: 20.w),
              child: Row(
                children: [
                  Text("$naira $amount",
                      style: TextStyle(
                          fontSize: 12.h,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w800,
                          color: ColorPallete.blueColor)),
                  SizedBox(
                    width: 14.w,
                  ),
                  Text(
                    "$naira $amountLineThrough",
                    style: TextStyle(
                        fontSize: 12.h,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.w500,
                        color: ColorPallete.grayColor),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
