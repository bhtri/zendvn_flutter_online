import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zendvn_online/provider/count_provider.dart';
import 'package:zendvn_online/utilities/helper.dart';

class BT052502 extends StatefulWidget {
  const BT052502({super.key});

  @override
  State<BT052502> createState() => _BT052502State();
}

class _BT052502State extends State<BT052502> {
  String data = '';
  List<dynamic> item = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Helper.printof('BT052502');

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bai Tap 01 - Assets Font - Josefin Sans',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Josefin Sans',
                fontSize: 40,
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'Bai Tap 02 - GoogleFonts - abel',
              textAlign: TextAlign.center,
              style: GoogleFonts.abel(
                fontSize: 40,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CountProvider>(
                      context,
                      listen: false,
                    ).decrease();
                  },
                  child: const Icon(Icons.remove),
                ),
                Consumer<CountProvider>(
                  builder: (context, value, child) {
                    return Text(value.count.toString());
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CountProvider>(
                      context,
                      listen: false,
                    ).increase();
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            Image.asset(
              'assets/images/img01.jpg',
              width: 300,
              height: 300,
              filterQuality: FilterQuality.high,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error);
              },
            ),
            Image.network(
              'http://placeimg.com/640/480/business',
              width: 300,
              height: 300,
              filterQuality: FilterQuality.high,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error);
              },
            )
          ],
        ),
      ),
    );
  }
}
