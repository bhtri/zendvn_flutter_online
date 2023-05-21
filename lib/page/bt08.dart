import 'package:flutter/material.dart';

class BT08 extends StatelessWidget {
  const BT08({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Training',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nemo natus ipsam animi doloribus.'),
                  Row(
                    children: [
                      Text(
                        'Detail',
                        style: TextStyle(color: Colors.amber),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.arrow_right_alt_outlined),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Expanded(
                      flex: 8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'molestias-est-ut',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Dolorum libero culpa corrupti ipsam molestias.Dolorum libero culpa corrupti ipsam molestias.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(
                                Icons.login,
                                size: 25,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'ZendVN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        // width: 60,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Icon(
                          Icons.settings,
                          size: 25,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    colors: [
                      Colors.amberAccent,
                      Colors.white70,
                      Colors.amberAccent,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              const Text('nulla animi doloremque'),
              const SizedBox(height: 20),
              GridView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 5,
                ),
                children: List.generate(
                  20,
                  (index) => Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          // spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            'πQuo est repellendus in nobis. Assumenda ut tenetur ipsa ducimus totam. Ratione neque reiciendis iure praesentium. Assumenda sapiente sed qui voluptatum. Vel sapiente saepe recusandae repudiandae.',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
