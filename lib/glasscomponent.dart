import 'dart:ui';

import 'package:flutter/material.dart';

class GlassComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.white.withOpacity(0.3),width: 1)
        ),
        margin: const EdgeInsets.all(18),
        height: MediaQuery.of(context).size.height/2.5,
        width: MediaQuery.of(context).size.width/2.5,
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
                    top: 130,
                    left:20,
                    child:  Container(
                      height: MediaQuery.of(context).size.height/2.5,
                      width: MediaQuery.of(context).size.height/2.5,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Username',
                        ),
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.50),
                            fontSize: 16,)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left:20,
                    child:  Container(
                      height: MediaQuery.of(context).size.height/2.5,
                      width: MediaQuery.of(context).size.height/2.5,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password'
                        ),
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.50),
                          fontSize: 16,)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: MediaQuery.of(context).size.width/11.5,
                    child:  Container(
                      height: 125,
                      width: 125,
                      child: TextButton(

                        style: TextButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Color.fromARGB(60, 0, 23, 23),
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                        onPressed: () {},

                        child: const Text('LOGIN'),

                        ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 20,
                    child: Text("DEVELOPED BY SNIPPETSX", style: TextStyle(
                      color: Colors.white.withOpacity(0.50),
                      fontSize: 14,
                    ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    right: 32,
                    child: Text("EXCLUSIVE FOR LYCEYM 15",style: TextStyle(
                      color: Colors.white.withOpacity(0.50),
                      fontSize: 14,
                    ),
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}