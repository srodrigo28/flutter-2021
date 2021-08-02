import 'package:flutter/material.dart';
import 'package:imc/imc.dart';

void main(){
  runApp(
      new MaterialApp(
          debugShowCheckedModeBanner: false,
          //color: Colors.blueAccent,
          //home: new Bemvindo(),
          home: Imc(),
      ));
}