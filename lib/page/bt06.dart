import 'package:flutter/material.dart';

class BT06 extends StatelessWidget {
  const BT06({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: RichText(
          text: const TextSpan(
            text: 'Hello',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 24,
            ),
            children: [
              TextSpan(
                text: ' ZendVN ',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: ListView.builder(
                itemCount: 100,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.white,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Text(
                    'List Of Article',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              flex: 2,
                              child: Text(
                                '08:AM aslkda kl asdjaslkdj',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: AspectRatio(
                                aspectRatio: 10,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.blue,
                                        Colors.white,
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
