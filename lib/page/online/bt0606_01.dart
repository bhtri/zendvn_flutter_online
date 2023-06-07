import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BT060601 extends StatelessWidget {
  const BT060601({super.key});

  _launchURL() async {
    Uri url = Uri.parse('https://www.google.com');
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isCheck = true;
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.03),
                    const TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.redAccent),
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    StatefulBuilder(
                      builder: (context, setState) {
                        return TextFormField(
                          obscureText: isCheck,
                          autocorrect: false,
                          enableSuggestions: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email is empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            filled: true,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(width: 3, color: Colors.redAccent),
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            ),
                            labelText: 'Password',
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  isCheck = !isCheck;
                                });
                              },
                              child: isCheck ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
                          backgroundColor: const Color(0xffD2924E),
                          elevation: 0,
                        ),
                        onPressed: () {
                          formKey.currentState?.validate();
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
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
    );
  }
}
