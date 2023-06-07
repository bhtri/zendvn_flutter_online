import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zendvn_online/app/helper.dart';
import 'package:zendvn_online/app/theme.dart';
import 'package:zendvn_online/provider/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(
    providers: AppHelper.providers,
    child: Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeProvider.isLight ? ThemeMode.light : ThemeMode.dark,
          initialRoute: AppHelper.initialRoute,
          routes: AppHelper.router(context),
        );
      },
    ),
  ));
}
