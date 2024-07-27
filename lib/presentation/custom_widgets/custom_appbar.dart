import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_clone/Domain/Ui_Helper/ui_helper.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  IconData? icon;
  IconData? icon1;
  CustomAppBar(
      {Key? key,
      required this.userName,
      this.icon = FontAwesomeIcons.download,
      this.icon1 = FontAwesomeIcons.magnifyingGlass})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0x0),
      elevation: 0,
      leading: Image.asset('assets/images/logos/n.png'),
      title: Text(
        userName,
        style: UiHelper.mTextStyle20(fontWeight: FontWeight.w500),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            size: 20.sp,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon1,
            size: 20.sp,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
