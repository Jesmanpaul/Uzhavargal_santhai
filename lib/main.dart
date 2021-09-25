import 'package:farmers_e_market/screens/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uzhavargal Santhai',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Loginpage(),
    );
  }
}
