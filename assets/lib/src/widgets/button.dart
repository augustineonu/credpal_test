import 'package:flutter/material.dart';
import '../values/colors.dart';

class Button extends StatelessWidget {
  final String title;
  const Button({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

        final currentWidth =  MediaQuery.of(context).size.width;
        final currentHeight =  MediaQuery.of(context).size.height;

    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
          color: ColorPallete.blueColor),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
            child: Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            color: ColorPallete.whiteColor,
            fontWeight: FontWeight.w700,
          ),
        )),
      ),
    );
  }
}
