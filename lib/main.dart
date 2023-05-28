import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zendvn_online/page/my_app.dart';
import 'package:zendvn_online/provider/count_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ChangeNotifierProvider(
    create: (context) => CountProvider(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  ));
}
