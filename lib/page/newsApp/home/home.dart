import 'package:flutter/material.dart';
import 'package:zendvn_online/app/color.dart';
import 'package:zendvn_online/app/constant.dart';

class NewsHomePage extends StatefulWidget {
  const NewsHomePage({super.key});

  static const String routerName = '/news_homepage';

  @override
  State<NewsHomePage> createState() => _NewsHomePageState();
}

class _NewsHomePageState extends State<NewsHomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leadingWidth: 50,
        leading: Ink(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: AppColor.kNewsActive,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            splashRadius: 25,
            color: AppColor.kNewsWhite,
            onPressed: () {
              _key.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ),
        actions: [
          Ink(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: AppColor.kNewsActive,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              splashRadius: 25,
              color: AppColor.kNewsWhite,
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          width: double.infinity,
          height: double.infinity,
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
              DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppConstant.kAssetImgIconAppNews),
                    fit: BoxFit.contain,
                  ),
                ),
                child: const SizedBox(),
              ),
              const ListTile(
                title: Text("Item 1"),
                trailing: Icon(Icons.arrow_forward),
              ),
              const ListTile(
                title: Text("Item 2"),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
