import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_project/views/e02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class E01PageUi extends StatefulWidget {
  const E01PageUi({super.key});

  @override
  State<E01PageUi> createState() => _E01PageUiState();
}

class _E01PageUiState extends State<E01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40,
            right: 40,
          ),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/imge1.png',
                  height: 600.0,
                ),
                Text(
                  'BERRY JUICE',
                  style: GoogleFonts.libreBaskerville(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('A “Moments of healthy sip '),
                Text('The best vitamin for your health'),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => E02PageUi(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Expior Now',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      55.0,
                    ),
                    backgroundColor: Color.fromARGB(255, 248, 157, 11),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
