import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lcsa_drawboard/MainPage.dart';
import 'package:lcsa_drawboard/login_api.dart';
import 'package:lcsa_drawboard/crypto.dart';
import 'package:lcsa_drawboard/Drawboard_page.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login>{
  var username = '';
  var password = '';
  var hashed_pass = '';
  var _res = '';
  var  LoginA_varible = 'Login';
  var x = -1;
  Future<dynamic> _login_api(String usr, String psswrd) async {
    try {
      final user = await fetchUser(usr, psswrd);
      print(user);
      setState(() {
        _res = "ok";
        LoginA_varible = "Confirm Login";
      });
    } catch (e) {
      _res = "err";
      LoginA_varible = "Retry Login";
    }
  }
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
        height: 500,
        width: 700,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left:10,
                    child:  Container(
                      height: 60,
                      width: 60,
                      child: Image.asset('assets/lcsa_logo.png')
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 10,
                    child: Text("Login",style: TextStyle(
                      color: Colors.white.withOpacity(0.50),
                      fontSize: 14,
                    ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    left:15,
                    child:  Container(
                      height: 100,
                      width: 325,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Username',
                        ),
                          onChanged: (user) {
                            username = user;
                          },
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.50),
                            fontSize: 16,)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left:15,
                    child:  Container(
                      height: 100,
                      width: 325,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password'
                        ),
                        onChanged: (passwd) {
                          password = passwd;
                        },
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.50),
                          fontSize: 16,)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 10,
                    child: Text(_res, style: TextStyle(
                      color: Colors.white.withOpacity(0.50),
                      fontSize: 12,
                    ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: 205,
                    child:  Container(
                      height: 125,
                      width: 125,
                      child: TextButton(

                        style: TextButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Color.fromARGB(20, 0, 200, 200),
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                        onPressed: () {

                          hashed_pass = crypto256(password);
                          _login_api(username, hashed_pass);

                          if(_login_api(username, hashed_pass) == null){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                          }
                        },

                        child:  Text(LoginA_varible),

                        ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: 60,
                    child:  Container(
                      height: 125,
                      width: 125,
                      child: TextButton(

                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Color.fromARGB(90, 0, 23, 23),
                          padding: const EdgeInsets.all(16.0),
                          textStyle: const TextStyle(fontSize: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                      },
                        child: const Text('Register'),

                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 10,
                    child: Text("DEVELOPED BY:\nSNIPPETSX", style: TextStyle(
                      color: Colors.white.withOpacity(0.50),
                      fontSize: 14,
                    ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    right: 20,
                    child: Text("EXCLUSIVE FOR:\nLYCEYM 15",style: TextStyle(
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
      ),
    ),
    );
  }
}


class Register extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
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
        child:Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.white.withOpacity(0.3),width: 1)
        ),
        margin: const EdgeInsets.all(18),
        height: 500,
        width: 700,
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
                    top: 70,
                    left: 15,
                    child: Text("Register",style: TextStyle(
                      color: Colors.white.withOpacity(0.50),
                      fontSize: 14,
                    ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left:15,
                    child:  Container(
                      height: 100,
                      width: 325,
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
                    top: 160,
                    left:15,
                    child:  Container(
                      height: 100,
                      width: 325,
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
                    top: 230,
                    left:15,
                    child:  Container(
                      height: 100,
                      width: 325,
                      child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Re-type Password'
                          ),
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.50),
                            fontSize: 16,)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: 205,
                    child:  Container(
                      height: 125,
                      width: 125,
                      child: TextButton(

                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Color.fromARGB(20, 0, 200, 200),
                          padding: const EdgeInsets.all(16.0),
                          textStyle: const TextStyle(fontSize: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                        onPressed: () {},
                        child: const Text('Register'),

                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: 60,
                    child:  Container(
                      height: 125,
                      width: 125,
                      child: TextButton(

                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Color.fromARGB(90, 0, 23, 23),
                          padding: const EdgeInsets.all(16.0),
                          textStyle: const TextStyle(fontSize: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Go back'),

                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 20,
                    child: Text("DEVELOPED BY:\nSNIPPETSX", style: TextStyle(
                      color: Colors.white.withOpacity(0.50),
                      fontSize: 14,
                    ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    right: 20,
                    child: Text("EXCLUSIVE FOR:\nLYCEYM 15",style: TextStyle(
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
    ),),
    );
  }
}