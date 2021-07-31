import 'dart:html';

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
      color: Colors.red,
      height: 200,
    child: Row(
      children: [
          Image.asset('logo')
        ],
      ),
      ),
      ],
    );
  }
}
