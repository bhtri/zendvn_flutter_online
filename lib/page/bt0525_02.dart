import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zendvn_online/provider/count_provider.dart';

class BT052502 extends StatefulWidget {
  const BT052502({super.key});

  @override
  State<BT052502> createState() => _BT052502State();
}

class _BT052502State extends State<BT052502> {
  String data = '';
  List<dynamic> item = [];

  void loadJsonData() async {
    String jsonText = await rootBundle.loadString('assets/json/category.json');
    setState(() {
      // data = json.decode(jsonText);
    });
  }

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    print('BT052502');

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Bai Tap 01'),
          Text(
            'Bai Tap 02',
            style: GoogleFonts.abel(
              fontSize: 20,
            ),
          ),
          Text(data),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Provider.of<CountProvider>(
                    context,
                    listen: false,
                  ).decrease();
                },
                icon: const Icon(Icons.remove),
                label: const Text(''),
              ),
              Consumer<CountProvider>(
                builder: (context, value, child) {
                  return Text(value.count.toString());
                },
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Provider.of<CountProvider>(
                    context,
                    listen: false,
                  ).increase();
                },
                icon: const Icon(Icons.add),
                label: const Text(''),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
