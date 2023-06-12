import 'package:flutter/material.dart';

class NewsCategoryPage extends StatelessWidget {
  const NewsCategoryPage({super.key});

  static const String routerName = '/news_categorypage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: const SafeArea(child: Placeholder()),
    );
  }
}
