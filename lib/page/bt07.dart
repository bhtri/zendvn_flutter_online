import 'package:flutter/material.dart';

class BT07 extends StatelessWidget {
  const BT07({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                const Expanded(
                  flex: 3,
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Center(
                      child: Text(
                        'Welcome ZendVN',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      'Aperiam itaque tempore quia dolores magnam nihil.'),
                  const SizedBox(height: 10),
                  Container(
                    height: 20,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                      'Nisi vero ea inventore quaerat veniam odit corporis excepturi occaecati.'),
                  const SizedBox(height: 10),
                  const Text(
                    'Ipsum quos ipsum modi molestiae nam quis. Quibusdam ullam laboriosam et. Ullam odio sunt reprehenderit ea nam. Minus fuga blanditiis vel aspernatur ullam. Ullam blanditiis dolores doloremque et temporibus.',
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Aut aut debitis'),
                      Text('Aut aut debitis'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
