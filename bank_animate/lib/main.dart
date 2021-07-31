import 'package:bank_animate/pages_home/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank Design Inspiration',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}
