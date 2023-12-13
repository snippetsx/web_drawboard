import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lcsa_drawboard/glasscomponent.dart';

void main(){
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home : App()));
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image:AssetImage("assets/bg.png"),
                    fit: BoxFit.fill
                ),
              ),
              child: GlassComponent()
          )
      );
  }
}