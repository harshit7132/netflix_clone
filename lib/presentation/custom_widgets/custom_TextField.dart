import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix_clone/Domain/Ui_Helper/ui_helper.dart';

class CustomWidget {
  ///blue snakebar
  static mCustomBlueSnakeBar(String title, BuildContext context,
      {int duration = 2}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: duration),
        content: Text(title),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}

class mTextField extends StatefulWidget {
  TextEditingController controller;
  String text;
  TextInputType? keyboardType;
  bool pass;
  bool? auto;
  mTextField(
      {super.key,
      required this.text,
      required this.pass,
      this.auto = false,
      required this.controller,
      required this.keyboardType});

  @override
  State<mTextField> createState() => _mTextFieldState();
}

class _mTextFieldState extends State<mTextField> {
  @override
  Widget build(BuildContext context) {
    bool focus = widget.auto!;
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: focus ? Color(0x84b2b2b2) : Color(0xff666363),
      ),
      alignment: Alignment.center,
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.pass,
        keyboardType: widget.keyboardType,
        autofocus: widget.auto!,
        decoration: InputDecoration(
          labelText: widget.text,
          border: InputBorder.none,
          labelStyle: UiHelper.mTextStyle14(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          focusColor: const Color(0xff666363),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
        ),
        cursorColor: Colors.white,
        onTap: () {
          setState(() {
            focus = true;
          });
        },
      ),
    );
  }
}
