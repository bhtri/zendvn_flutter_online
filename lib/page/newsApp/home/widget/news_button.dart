// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:zendvn_online/app/color.dart';

class NewsButton extends StatelessWidget {
  const NewsButton({
    Key? key,
    required this.icon,
    this.press,
  }) : super(key: key);

  final IconData? icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: AppColor.kNewsActive,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        splashRadius: 25,
        onPressed: press,
        icon: Icon(
          icon,
          color: AppColor.kNewsWhite,
        ),
      ),
    );
  }
}
