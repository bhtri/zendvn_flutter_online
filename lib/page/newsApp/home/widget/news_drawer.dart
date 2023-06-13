import 'package:flutter/material.dart';
import 'package:zendvn_online/app/color.dart';
import 'package:zendvn_online/app/constant.dart';
import 'package:zendvn_online/app/style.dart';
import 'package:zendvn_online/page/newsApp/category/category.dart';

class NewsDrawer extends StatelessWidget {
  const NewsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.65,
      height: size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff005BEA),
            Color(0xff3DA2F2),
            Color(0xff22CFFE),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ListView(
        children: [
          Container(
            height: size.height * 0.15,
            margin: EdgeInsets.symmetric(vertical: AppConstant.kDefaultMargin),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppConstant.kAssetImgIconAppNews),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            'APP TIN TUC',
            style: AppStyle.textStyleHeader,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: size.height * 0.05),
          ListTile(
            title: Text('Trang Chu', style: AppStyle.textStyleItem.copyWith(color: AppColor.kNewsActive)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Danh Muc', style: AppStyle.textStyleItem),
            onTap: () {
              Navigator.popAndPushNamed(context, NewsCategoryPage.routerName);
            },
          ),
          ListTile(
            title: Text('Yeu Thich', style: AppStyle.textStyleItem),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Da Xem', style: AppStyle.textStyleItem),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
