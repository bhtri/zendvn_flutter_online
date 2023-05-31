import 'package:flutter/material.dart';

class BT01 extends StatelessWidget {
  const BT01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter Demo Home Page',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xffD3BAF5),
        elevation: 0,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text('0'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
