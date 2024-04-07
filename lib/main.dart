import 'package:flutter/material.dart';
// import 'package:login_page/login_page.dart';

// import 'package:login_page/login_page.dart';
// import 'package:login_page/groups.dart';
// import 'package:login_page/groups.dart';
// import 'package:login_page/login_page.dart';
// import 'map.dart';
// import 'prifle.dart';
import 'groups.dart';
// import 'groups.dart';
void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp
    (
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData
      (
        
      ),
      home: const Group(),
    );
  }
}