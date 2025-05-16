import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_project/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    //ดรียกใช้คลาสที่เรียกใช้ widget หลักของ MaterialApp
    FlutterSpeedUI(),
  );
}
//-----------------------
class FlutterSpeedUI extends StatefulWidget {
  const FlutterSpeedUI({super.key});

  @override
  State<FlutterSpeedUI> createState() => _FlutterSpeedUIState();
}

class _FlutterSpeedUIState extends State<FlutterSpeedUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUi(),//กำหนดห้าจอแรกของแอป
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}