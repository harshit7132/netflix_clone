import 'package:netflix_clone/domain/app_imports/app_imports.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          'assets/images/logos/logo_netflix.png',
          width: 110.w,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          SizedBox(
            height: 80.h,
          ),
          mTextField(
            keyboardType: TextInputType.text,
            controller: nameController,
            pass: false,
            text: 'Name',
            auto: true,
          ),
          SizedBox(
            height: 20.h,
          ),
          mTextField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            pass: false,
            text: 'Email and phone number',
            auto: false,
          ),
          SizedBox(
            height: 20.h,
          ),
          mTextField(
            keyboardType: TextInputType.visiblePassword,
            controller: passwordController,
            pass: true,
            text: 'Password',
            auto: false,
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomOutLinedButton(
            text: 'SignUp',
            onPressed: () {},
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextButton(
            onPressed: () {},
            text: 'Need help?',
            textStyle: UiHelper.mTextStyle16(
              color: const Color(0xffB5ADAD),
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextButton(
            onPressed: () {},
            text: 'Now to Netflix? Signup now.',
            textStyle: UiHelper.mTextStyle18(
              color: const Color(0xffB5ADAD),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextButton(
            onPressed: () {},
            text:
                'Sign-in is protected by Google reCAPTCHA to ensure you’re not a bot. Learn more.',
            textStyle: UiHelper.mTextStyle12(
              color: const Color(0xffB5ADAD),
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }
}
