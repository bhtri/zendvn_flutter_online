import 'package:flutter/material.dart';
import 'package:zendvn_online/page/bt02.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BT02(),
    );
  }
}
