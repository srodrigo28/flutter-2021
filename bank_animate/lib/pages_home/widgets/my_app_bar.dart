import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
      Container(
      color: Colors.purple[800],
      height: 120,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children:[
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset("assets/logo.png",
          width: 40.0, height: 40.0, color: Colors.white,
        ),
        Text( // Titulo
          '  Sebastião Rodrigo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        ],
      ),
      Icon(Icons.expand_more)
    ],
    ),
      ),
      ],
    );
  }
}
