import 'package:netflix_clone/domain/app_imports/app_imports.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        children: [
          SizedBox(
            height: 80.h,
          ),
          mTextField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            pass: false,
            text: 'Email and phone number',
            auto: true,
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
            text: 'SignIn',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'OR',
              style: UiHelper.mTextStyle16(fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomElevatedButton(
            text: 'Use a Sign-In Code',
            onPressed: () {},
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextButton(
            onPressed: () {},
            text: 'Forgot password?',
            textStyle: UiHelper.mTextStyle14(
              color: const Color(0xffB5ADAD),
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignupScreen(),
                ),
              );
            },
            text: 'New to Netflix? Signup now.',
            textStyle: UiHelper.mTextStyle16(
              color: const Color(0xffB5ADAD),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10.h,
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
