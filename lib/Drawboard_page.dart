import 'package:flutter/material.dart';
import 'package:lcsa_drawboard/view/drawing_page.dart';

const Color kCanvasColor = Color(0xff606060);

class Drawing extends StatelessWidget {
  const Drawing({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DrawingPage()
    );
  }
}
