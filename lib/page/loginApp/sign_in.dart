import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zendvn_online/common/button/custom_button.dart';
import 'package:zendvn_online/common/fields/custom_text_field.dart';
import 'package:zendvn_online/page/loginApp/sign_up.dart';
import 'package:zendvn_online/utilities/helper.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  static const String routerName = '/signin_page';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void _launchURL() {
    Navigator.pushNamed(context, SignUpPage.routerName);
  }

  @override
  Widget build(BuildContext context) {
    Helper.printof('SignInPage::build');

    final Size size = MediaQuery.of(context).size;
    // https://yaba-blog.com/flutter-keyboard-form-hidden/
    final double bottomSpace = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: EdgeInsets.only(bottom: bottomSpace, left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height / 2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('http://placeimg.com/640/480/city'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        labelText: 'Email',
                        validator: (value) => Helper.emailValid(value),
                      ),
                      SizedBox(height: size.height * 0.05),
                      CustomTextField(
                        labelText: 'Password',
                        isObscureText: true,
                        validator: (value) => Helper.passwordValid(value),
                      ),
                      SizedBox(height: size.height * 0.05),
                      CustomButton(
                        label: 'Login',
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          formKey.currentState?.validate();
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'No regisered yet? ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: 'Create an account',
                        style: const TextStyle(
                          color: Color(0xffD2924E),
                          fontSize: 15,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = _launchURL,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
