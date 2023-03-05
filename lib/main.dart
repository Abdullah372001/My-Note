// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:first_app/crud/addnote.dart';
import 'package:first_app/crud/editnote.dart';
import 'package:first_app/home/homepage.dart';
import 'package:first_app/auth/login.dart';
import 'package:first_app/auth/signup.dart';

void main() {
  runApp(MyNotes());
}

class MyNotes extends StatelessWidget {
  const MyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      routes: {
        'Login': (context) => Login(),
        'Signup': (context) => Signup(),
        'Home': (context) => HomePage(),
        'AddNote': (context) => AddNote(),
        'EditNote': (context) => EditNote()
      },
    );
  }
}
