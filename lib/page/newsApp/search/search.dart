import 'package:flutter/material.dart';
import 'package:zendvn_online/page/newsApp/category/category.dart';
import 'package:zendvn_online/page/newsApp/search/widget/search_box.dart';

class NewsSearchPage extends StatelessWidget {
  const NewsSearchPage({super.key});

  static const String routerName = '/news_searchpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchBox(
              pressSuffix: () {
                Navigator.pushNamed(context, NewsCategoryPage.routerName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
