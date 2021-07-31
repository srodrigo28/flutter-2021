import 'package:bank_animate/pages_home/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        children: <Widget>[
          MyAppBar(),
        ],
      )
    );
  }
}
