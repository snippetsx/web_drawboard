import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lcsa_drawboard/AuthPage.dart';

void main(){
  runApp(MaterialApp(
      title: "LCSA Whiteboard",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(
            255, 1, 255, 255)),
      ),
      debugShowCheckedModeBanner: false,
      home : App()));
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return
      Scaffold(
          body: Login()
      );
  }
}