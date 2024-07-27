import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix_clone/Domain/Ui_Helper/ui_helper.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final int color;
  final IconData icon;
  final bool isList;
  final double height;
  final double width;

  const CustomContainer({
    super.key,
    this.isList = false,
    this.height = 35,
    this.width = 130,
    this.color = 0xffFFFFFFFF,
    this.text = 'Play',
    this.icon = Icons.play_arrow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      color: Color(isList ? 0xff8f888898 : color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isList ? Colors.white : Colors.black,
            size: 30.sp,
          ),
          Text(
            text,
            style: UiHelper.mTextStyle16(
              color: isList ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class RedContainer extends StatelessWidget {
  final String position;

  const RedContainer({super.key, required this.position});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      color: Colors.red,
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'Top',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: '\n$position',
              style: UiHelper.mTextStyle14(),
            ),
          ],
        ),
      ),
    );
  }
}
