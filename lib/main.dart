import 'package:flutter/material.dart';
import 'package:flutter_dti_project/views/a01_page_ui.dart';
import 'package:flutter_dti_project/views/a02_page_ui.dart';
import 'package:flutter_dti_project/views/b01_page_ui.dart';
import 'package:flutter_dti_project/views/c01_page_ui.dart';
import 'package:flutter_dti_project/views/c02_page_ui.dart';
import 'package:flutter_dti_project/views/c03_page_ui.dart';
import 'package:flutter_dti_project/views/e01_page_ui.dart';
import 'package:flutter_dti_project/views/e02_page_ui.dart';
import 'package:flutter_dti_project/views/e03_page_ui.dart';
import 'package:flutter_dti_project/views/e04_page_ui.dart';
import 'package:flutter_dti_project/views/home_ui.dart';
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
      home: B01PageUi(),//กำหนดห้าจอแรกของแอป
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}