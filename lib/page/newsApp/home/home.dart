import 'package:flutter/material.dart';
import 'package:zendvn_online/page/newsApp/home/widget/news_button.dart';
import 'package:zendvn_online/page/newsApp/home/widget/news_drawer.dart';
import 'package:zendvn_online/page/newsApp/search/search.dart';

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
      drawer: const NewsDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leadingWidth: 50,
        leading: NewsButton(
          icon: Icons.menu,
          press: () {
            _key.currentState!.openDrawer();
          },
        ),
        actions: [
          NewsButton(
            icon: Icons.search,
            press: () {
              Navigator.pushNamed(context, NewsSearchPage.routerName);
            },
          ),
        ],
      ),
      body: const SafeArea(child: Placeholder()),
    );
  }
}
