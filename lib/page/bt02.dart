import 'package:flutter/material.dart';

const double kPadding = 15;

class BT02 extends StatelessWidget {
  const BT02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ZendVN', style: TextStyle(color: Colors.blue, fontSize: 20)),
            Text('Study Flutter', style: TextStyle(color: Colors.black, fontSize: 20)),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(kPadding),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white70,
                      Colors.blue,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                width: double.infinity,
              ),
            ),
          ),
          const Expanded(
            flex: 4,
            child: Body(name: 'Categories'),
          ),
          const Expanded(
            flex: 4,
            child: Body(name: 'News'),
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: kPadding),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              const Text('More ...',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  )),
            ],
          ),
        ),
        const SizedBox(height: kPadding),
        Container(
          width: double.infinity,
          height: 300,
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: kPadding),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white70,
                      Colors.blue,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                width: 200,
              );
            },
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
