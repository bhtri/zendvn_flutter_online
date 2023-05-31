import 'package:flutter/material.dart';

class BT052301 extends StatelessWidget {
  const BT052301({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              childAspectRatio: 3,
            ),
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(150, 80),
                  elevation: 0,
                ),
                child: const Text(
                  'Click Me',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(150, 80),
                  elevation: 5,
                  backgroundColor: Colors.amber,
                ),
                child: const Text(
                  'Click Me',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: const Size(150, 80),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text(
                  'Click Me',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white70,
                        Colors.green,
                        Colors.green,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 80),
                    elevation: 5,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: const Text(
                    'Click Me',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(150, 80),
                  shadowColor: Colors.transparent,
                  side: const BorderSide(
                    width: 0.3,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  'Click Me',
                  style: TextStyle(fontSize: 25, color: Colors.blue),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
