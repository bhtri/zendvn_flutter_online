// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:zendvn_online/app/color.dart';

import 'package:zendvn_online/app/constant.dart';
import 'package:zendvn_online/app/style.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    this.onChanged,
    this.controller,
    this.pressSuffix,
  }) : super(key: key);

  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final VoidCallback? pressSuffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppConstant.kDefaultMargin),
      padding: EdgeInsets.symmetric(
        horizontal: AppConstant.kDefaultPadding,
        vertical: AppConstant.kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        color: AppColor.kSearchBar,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        onChanged: onChanged,
        controller: controller,
        style: AppStyle.textStyleItem,
        decoration: InputDecoration(
          fillColor: AppColor.kSearchBar,
          filled: true,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hoverColor: Colors.transparent,
          prefixIcon: Icon(
            Icons.search,
            size: AppStyle.textStyleItem.fontSize,
          ),
          suffixIcon: IconButton(
            splashRadius: 25,
            onPressed: pressSuffix,
            icon: Icon(
              Icons.tune,
              size: AppStyle.textStyleItem.fontSize,
            ),
          ),
          prefixIconColor: Colors.white,
          suffixIconColor: Colors.white,
          hintText: 'Search',
          hintStyle: AppStyle.textStyleItem,
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppConstant.kDefaultPadding,
            vertical: AppConstant.kDefaultPadding / 2,
          ),
        ),
      ),
    );
  }
}
