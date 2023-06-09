import 'package:flutter/material.dart';
import 'package:zendvn_online/common/buttons/custom_button.dart';
import 'package:zendvn_online/common/fields/custom_text_field.dart';
import 'package:zendvn_online/utilities/helper.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  static const String routerName = '/signup_page';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirm = TextEditingController();

  void handleSignup() {
    FocusManager.instance.primaryFocus?.unfocus();
    if (formKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    Helper.printof('SignInPage::build');
    final Size size = MediaQuery.of(context).size;
    final double bottomSpace = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Sign up',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: EdgeInsets.only(bottom: bottomSpace, left: 20, right: 20, top: size.height / 4),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  CustomTextField(
                    controller: email,
                    labelText: 'Email',
                    validator: (value) => Helper.emailValid(value),
                  ),
                  SizedBox(height: size.height * 0.01),
                  CustomTextField(
                    controller: password,
                    labelText: 'Password',
                    isObscureText: true,
                    validator: (value) => Helper.passwordValid(value),
                  ),
                  SizedBox(height: size.height * 0.01),
                  CustomTextField(
                    controller: confirm,
                    labelText: 'Confirm Password',
                    isObscureText: true,
                    validator: (value) => Helper.confirmPassword(password.text, confirm.text),
                  ),
                  SizedBox(height: size.height * 0.05),
                  CustomButton(
                    label: 'Sign up',
                    onTap: handleSignup,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
