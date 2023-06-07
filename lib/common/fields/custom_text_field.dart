import 'package:flutter/material.dart';
import 'package:zendvn_online/utilities/helper.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.labelText,
    this.isObscureText = false,
  });

  final String? labelText;
  final bool isObscureText;

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
      autocorrect: false,
      enableSuggestions: false,
      style: const TextStyle(color: Colors.white, fontSize: 20),
      cursorColor: Colors.white,
      showCursor: true,
      maxLength: 30,
      decoration: InputDecoration(
        counterText: '',
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.grey.withOpacity(0.9),
        filled: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Colors.white, fontSize: 20),
        suffixIconColor: Colors.white,
        suffixIcon: widget.isObscureText
            ? InkWell(
                onTap: () {
                  setState(() {
                    isCheck = !isCheck;
                  });
                },
                child: isCheck ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
              )
            : null,
      ),
    );
  }
}
