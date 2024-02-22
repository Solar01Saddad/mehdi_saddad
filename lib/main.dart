import 'package:mehdi_saddad/Home.dart';
import 'package:mehdi_saddad/About.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context)=> Home(),
      '/About':(context)=>About(),
    },
    ));
}