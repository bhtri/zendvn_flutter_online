import 'package:flutter/material.dart';
import 'package:zendvn_online/utilities/helper.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.labelText,
    this.isObscureText = false,
    this.validator,
    this.onChanged,
    this.controller,
  });

  final String? labelText;
  final bool isObscureText;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isCheck = false;

  @override
  void initState() {
    super.initState();
    isCheck = widget.isObscureText;
  }

  @override
  Widget build(BuildContext context) {
    Helper.printof('CustomTextField::build');

    return TextFormField(
      obscureText: isCheck,
      obscuringCharacter: '*',
      autocorrect: false,
      enableSuggestions: false,
      style: const TextStyle(color: Colors.white, fontSize: 20),
      cursorColor: Colors.grey,
      showCursor: true,
      maxLength: 30,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.text,
      validator: widget.validator,
      onChanged: widget.onChanged,
      controller: widget.controller,
      decoration: InputDecoration(
        counterText: '',
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: const Color(0xffC7C7C7),
        filled: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Colors.white, fontSize: 20),
        errorStyle: const TextStyle(color: Colors.red, fontSize: 15),
        suffixIconColor: Colors.white,
        suffixIcon: widget.isObscureText
            ? InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    isCheck = !isCheck;
                  });
                },
                child: isCheck
                    ? const Icon(
                        Icons.visibility,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.visibility_off,
                        color: Colors.white,
                      ),
              )
            : null,
      ),
    );
  }
}
