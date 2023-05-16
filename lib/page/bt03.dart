import 'package:flutter/material.dart';

class BT03 extends StatelessWidget {
  const BT03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('About'),
              Text(
                'Numquam repellendus ea esse id repellat quasi.',
                maxLines: 2,
              ),
              Row(
                children: [
                  Icon(Icons.link_outlined),
                  SizedBox(width: 10),
                  Text(
                    'www.google.com',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star_outline),
                  SizedBox(width: 10),
                  Text('1.1k stars'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.remove_red_eye_outlined),
                  SizedBox(width: 10),
                  Text('80 watching'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
