import 'package:flutter/material.dart';

class BT04Edit extends StatelessWidget {
  const BT04Edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Languages',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Row(children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(20)),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(20)),
                    ),
                  ),
                ),
              ]),
              Row(
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text('Python'),
                  const SizedBox(width: 25),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text('Typescript'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
