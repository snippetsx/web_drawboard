import 'dart:ui';

import 'package:flutter/material.dart';

const Color kCanvasColor = Color(0xfff2f3f7);

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image:AssetImage("assets/bg.png"),
              fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white.withOpacity(0.3),width: 1)
            ),
            margin: const EdgeInsets.all(18),
            height: 1000,
            width: 1800,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        left:20,
                        child:  Container(
                            height: 60,
                            width: 60,
                            child: Image.asset('assets/lcsa_logo.png')
                        ),
                      ),
                      Positioned(
                        top: 60,
                        left:20,
                        child: Text(
                          "HELLO", style: TextStyle(
                            color: Colors.white.withOpacity(0.50)

                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: RawMaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          elevation: 2.0,
                          fillColor: Color.fromARGB(
                              255, 1, 143, 117),
                          child: Icon(
                            Icons.add,
                            size: 35.0,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        )
                      ),
                    ],
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}