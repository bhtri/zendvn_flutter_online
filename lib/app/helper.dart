import 'package:flutter/material.dart';
import 'package:zendvn_online/page/imageApp/detail.dart';
import 'package:zendvn_online/page/imageApp/image_app.dart';
import 'package:zendvn_online/page/imageApp/image_favorite_list.dart';
import 'package:zendvn_online/page/loginApp/sign_in.dart';
import 'package:zendvn_online/page/loginApp/sign_up.dart';
import 'package:zendvn_online/page/my_app.dart';

import 'package:provider/provider.dart';
import 'package:zendvn_online/page/newsApp/category/category.dart';
import 'package:zendvn_online/page/newsApp/home/home.dart';
import 'package:zendvn_online/page/newsApp/search/search.dart';
import 'package:zendvn_online/provider/auth_provider.dart';
import 'package:zendvn_online/provider/category_provider.dart';
import 'package:zendvn_online/provider/count_provider.dart';
import 'package:zendvn_online/provider/image_provider.dart';
import 'package:zendvn_online/provider/theme_provider.dart';

import 'package:nested/nested.dart';

class AppHelper {
  static String get initialRoute => SignInPage.routerName;

  static Map<String, Widget Function(BuildContext)> router(BuildContext context) {
    return {
      MyApp.routerName: (context) => const MyApp(),
      ImageApp.routerName: (context) => const ImageApp(),
      FavoriteListPage.routerName: (context) => const FavoriteListPage(),
      DetailPage.routerName: (context) => const DetailPage(),
      SignInPage.routerName: (context) => const SignInPage(),
      SignUpPage.routerName: (context) => SignUpPage(),
      NewsHomePage.routerName: (context) => const NewsHomePage(),
      NewsSearchPage.routerName: (context) => const NewsSearchPage(),
      NewsCategoryPage.routerName: (context) => const NewsCategoryPage(),
    };
  }

  // To be able to use SingleChildWidget, you must use nested
  // https://pub.dev/packages/nested
  static List<SingleChildWidget> get providers {
    return [
      ChangeNotifierProvider(create: (_) => CountProvider()),
      ChangeNotifierProvider(create: (_) => ImgProvider()),
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ChangeNotifierProvider(create: (_) => AuthProvider()),
      ChangeNotifierProvider(create: (_) => CategoryProvider()),
    ];
  }
}
