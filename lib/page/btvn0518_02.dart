import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BTVN051802 extends StatelessWidget {
  const BTVN051802({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TODO LIST-APP',
                    style: GoogleFonts.dancingScript(
                      textStyle: const TextStyle(
                        fontSize: 30,
                        color: Color(0xff4c4c4c),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: const Color(0xffFDB99B),
                      shadowColor: Colors.transparent,
                    ),
                    child: Text(
                      'Add Task',
                      style: GoogleFonts.dancingScript(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'Daily task',
                style: GoogleFonts.dancingScript(
                  textStyle: const TextStyle(
                    fontSize: 28,
                    color: Color(0xff4c4c4c),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 40),
                decoration: BoxDecoration(
                  color: const Color(0xffFAEADF),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return AspectRatio(
                      aspectRatio: 2,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: double.infinity,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffFD8D61),
                                    borderRadius: BorderRadius.all(Radius.circular(40)),
                                  ),
                                  child: RotatedBox(
                                    quarterTurns: -1,
                                    child: Text(
                                      'Study',
                                      style: GoogleFonts.dancingScript(
                                        textStyle: const TextStyle(
                                          fontSize: 28,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Color(0xffFDB99B),
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: double.infinity,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                            color: Color(0xffFD8D61),
                                            borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  'Hoc tap va lam viec',
                                                  style: GoogleFonts.dancingScript(
                                                    textStyle: const TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  '8 AM - 1 PM',
                                                  style: GoogleFonts.dancingScript(
                                                    textStyle: const TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                const Text(
                                                  'Consequatur maxime nam dolore qui optio molestiae laudantium sequi. Ipsam rerum ut. Ut iste repellendus et praesentium vero. Aut ea est nostrum. Explicabo laboriosam officiis placeat sed cum aut maiores.',
                                                  maxLines: 3,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 10,
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shadowColor: Colors.transparent,
                                    foregroundColor: Colors.blue,
                                    padding: EdgeInsets.zero,
                                    minimumSize: const Size(50, 40),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  ),
                                  child: const Icon(
                                    Icons.workspace_premium,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shadowColor: Colors.transparent,
                                    foregroundColor: Colors.blue,
                                    padding: EdgeInsets.zero,
                                    minimumSize: const Size(50, 40),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  ),
                                  child: const Icon(
                                    Icons.browse_gallery,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shadowColor: Colors.transparent,
                                    foregroundColor: Colors.blue,
                                    padding: EdgeInsets.zero,
                                    minimumSize: const Size(50, 40),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  ),
                                  child: const Icon(
                                    Icons.edit,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shadowColor: Colors.transparent,
                                    foregroundColor: Colors.blue,
                                    padding: EdgeInsets.zero,
                                    minimumSize: const Size(50, 40),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  ),
                                  child: const Icon(
                                    Icons.delete_forever,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 20);
                  },
                  itemCount: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
