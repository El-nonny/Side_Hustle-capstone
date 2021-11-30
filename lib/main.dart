import 'package:flutter/material.dart';
import 'package:login_ui/layOutScreen/loginscreen.dart';
import 'package:login_ui/layOutScreen/Homepage.dart';

void main() {
  runApp(const MyApp());
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    ),
  );
}

