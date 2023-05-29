import 'package:flutter/material.dart';
import 'package:zendvn_online/utilities/helper.dart';

class BT052501 extends StatefulWidget {
  const BT052501({super.key});

  @override
  State<BT052501> createState() => _BT052501State();
}

class _BT052501State extends State<BT052501> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    Helper.printof('BT052501');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Bai Tap 01'),
          const SizedBox(height: 10),
          StatefulBuilder(
            builder: (context, setState2) {
              Helper.printof('StatefulBuilder');
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      setState2(() {
                        num -= 1;
                      });
                    },
                    icon: const Icon(Icons.remove),
                    label: const Text(''),
                  ),
                  Text(num.toString()),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState2(() {
                        num = num + 1;
                      });
                    },
                    icon: const Icon(Icons.add),
                    label: const Text(''),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
