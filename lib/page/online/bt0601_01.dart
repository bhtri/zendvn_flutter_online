import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zendvn_online/provider/theme_provider.dart';

class BT060101 extends StatefulWidget {
  const BT060101({super.key});

  @override
  State<BT060101> createState() => _BT060101State();
}

class _BT060101State extends State<BT060101> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.read<ThemeProvider>().isLight ? 'Light Theme' : 'Dark Theme',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Transform.scale(
              scale: 2,
              child: Switch(
                value: context.read<ThemeProvider>().isLight,
                onChanged: (value) {
                  context.read<ThemeProvider>().handleChangeTheme(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
