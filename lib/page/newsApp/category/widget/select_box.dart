// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:zendvn_online/app/color.dart';
import 'package:zendvn_online/app/constant.dart';
import 'package:zendvn_online/app/style.dart';
import 'package:zendvn_online/provider/category_provider.dart';
import 'package:zendvn_online/utilities/helper.dart';

class SelectBox extends StatefulWidget {
  const SelectBox({
    Key? key,
    required this.id,
    required this.name,
    this.selected = false,
  }) : super(key: key);

  final int id;
  final String name;
  final bool selected;

  @override
  State<SelectBox> createState() => _SelectBoxState();
}

class _SelectBoxState extends State<SelectBox> {
  bool check = false;

  @override
  void initState() {
    super.initState();
    check = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    Helper.printof('SelectBox::build');

    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppConstant.kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.primaries[widget.id],
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              widget.name,
              style: AppStyle.textStyleItem,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          InkWell(
            onTap: () {
              context.read<CategoryProvider>().handleSelect(widget.id);
              setState(() {
                check = !check;
              });
            },
            child: Container(
              height: AppStyle.textStyleItem.fontSize,
              width: AppStyle.textStyleItem.fontSize,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.kNewsWhite,
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: check ? AppColor.kNewsBoxSelected : AppColor.kNewsBoxUnSelect,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
