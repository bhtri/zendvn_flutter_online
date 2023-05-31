import 'package:flutter/material.dart';

class BT05 extends StatelessWidget {
  const BT05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.green,
                // spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(3, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: const CircleAvatar(),
                ),
              ),
              const Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'David Grant',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '3D Artist',
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      'Tenetur qui dicta quaerat. Aut explicabo id provident consequatur iste et fugiat. Officia occaecati nihil quisquam et est dolor ex. Et rerum id accusamus.',
                      maxLines: 5,
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
