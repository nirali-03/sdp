import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
void main() {
  runApp(MaterialApp(
      initialRoute: 'login',
      routes:{
      'login' : (context)=>MyLogin(),
      'Register' : (context)=>Myregister(),
    }
  ));
}





