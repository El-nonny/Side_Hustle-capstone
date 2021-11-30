// ignore: file_names
// ignore: file_names
// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import, unnecessary_null_comparison

import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/layOutScreen/Homepage.dart';
import 'package:login_ui/layOutScreen/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_ui/layOutScreen/loginscreen.dart';


class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  final _auth = FirebaseAuth.instance;
    late String email;
    late String password;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green.shade500,
                Colors.red.shade500,
                ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: "First Name",
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.grey[600],
                              )),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: "Last Name",
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.grey[600],
                              )),
                        ),SizedBox(
                          height: 15.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: "Address",
                              prefixIcon: Icon(
                                Icons.location_city,
                                color: Colors.grey[600],
                              )),
                        ),SizedBox(
                          height: 15.0,
                        ),
                        TextField(
                          onChanged: (value) {
                          email = value;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: "Email",
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey[600],
                              )),
                        ),SizedBox(
                          height: 15.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: "Phone no",
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey[600],
                              )),
                        ),SizedBox(
                          height: 15.0,
                        ),
                        TextField(
                          obscureText: true,
                          onChanged: (value) {
                          password = value;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: "Password",
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey[600],
                              )),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: "Confirm Password",
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey[600],
                              )),
                        ),
                        
                        SizedBox(
                          height: 30.0,
                        ),
                        // ignore: sized_box_for_whitespace
                        Container(
                          width: double.infinity,
                          child: FlatButton(
                            child:(build(context)),
                            onPressed: () async {
                              try {
                                  final newUser = await _auth.createUserWithEmailAndPassword(
                                    email: email, password: password);
                                  if (newUser != null) {
                                    Navigator.push(context,
                               MaterialPageRoute(builder: (context) => dashboard()));
                                  }
                              }
                              catch (e) {
                                print(e);
                              }
                            color: Colors.green[600];

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text("Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  )
                                ),
                            );
                            },
                          ),
                        ) 
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
