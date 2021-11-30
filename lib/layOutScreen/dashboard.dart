// ignore: file_names
// ignore: file_names
// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:login_ui/layOutScreen/SignupScreen.dart';
import 'package:login_ui/layOutScreen/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

// ignore: camel_case_types
class _dashboardState extends State<dashboard> {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try{
    final user = await _auth.currentUser;
    if (user != null) {
      loggedInUser = user;
      print(loggedInUser.email);
    } }
    catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dashboard'),
          backgroundColor: Colors.blueAccent,
          ),
          body: Center(
            child: Image(
              image: AssetImage("assets/group.jpeg"),
            ),  
          ),
        ),
    );
  }
}