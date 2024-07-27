import 'package:netflix_clone/domain/app_imports/app_imports.dart';

class CustomOutLinedButton extends StatelessWidget {
  void Function()? onPressed;
  String? text;
  double? width;
  double? height;
  CustomOutLinedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.width = 500,
      this.height = 60});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: Size(width!.w, height!.h),
        side: const BorderSide(
          color: Colors.white,
        ),
      ),
      child: Text(
        text!,
        style: UiHelper.mTextStyle16(),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  String text;
  TextStyle textStyle;
  void Function()? onPressed;

  CustomTextButton({
    super.key,
    required this.text,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: textStyle,
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  String text;
  void Function()? onPressed;
  CustomElevatedButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff666363),
        minimumSize: Size(500.w, 50.h),
      ),
      child: Text(
        text,
        style: UiHelper.mTextStyle14(fontWeight: FontWeight.w600),
      ),
    );
  }
}
