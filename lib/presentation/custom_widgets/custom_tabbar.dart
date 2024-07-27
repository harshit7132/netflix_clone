import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_clone/Domain/Ui_Helper/ui_helper.dart';

class MTabBar extends StatelessWidget {
  String tab1;
  String tab2;
  String tab3;
  IconData? icon1;
  IconData? icon2;
  IconData? icon3;
  MTabBar({
    required this.tab1,
    required this.tab2,
    required this.tab3,
    this.icon1 = Icons.polymer,
    this.icon2 = FontAwesomeIcons.fire,
    this.icon3 = FontAwesomeIcons.gamepad,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 90.h, left: 20.w),
      child: TabBar(
        isScrollable: true,
        indicatorColor: Colors.white,
        indicator: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(50.sp),
        ),
        unselectedLabelColor: Colors.white,
        labelStyle: UiHelper.mTextStyle12(color: Colors.black),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            height: 30.h,
            child: IntrinsicWidth(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon1),
                  SizedBox(
                    width: 10.w,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Text(tab1),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            height: 30.h,
            child: IntrinsicWidth(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon2),
                  SizedBox(
                    width: 10.w,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Text(tab2),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            height: 30.h,
            child: IntrinsicWidth(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon3),
                  SizedBox(
                    width: 10.w,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Text(tab3),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
