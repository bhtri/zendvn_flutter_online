import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zendvn_online/app/theme.dart';
import 'package:zendvn_online/page/imageApp/detail.dart';
import 'package:zendvn_online/page/imageApp/image_app.dart';
import 'package:zendvn_online/page/imageApp/image_favorite_list.dart';
import 'package:zendvn_online/page/my_app.dart';
import 'package:zendvn_online/provider/count_provider.dart';
import 'package:zendvn_online/provider/image_provider.dart';
import 'package:zendvn_online/provider/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CountProvider()),
      ChangeNotifierProvider(create: (context) => ImgProvider()),
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ],
    child: Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeCustomer.lightTheme,
          darkTheme: ThemeCustomer.darkTheme,
          themeMode:  themeProvider.isLight ?  ThemeMode.light : ThemeMode.dark,
          initialRoute:  MyApp.routerName,
          routes: {
            MyApp.routerName: (context) => const MyApp(),
            ImageApp.routerName: (context) => const ImageApp(),
            FavoriteListPage.routerName: (context) => const FavoriteListPage(),
            DetailPage.routerName: (context) => const DetailPage(),
          },
        );
      },
    ),
  ));
}
