import 'package:checkbox/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}
//Ponto de integração para receber o Snackbar
//Ponto de integração paara iniciar a percistência no App
//Ponto de integração para implementar o shared_preferences 2.0.11
//Ponto de integração para receber a classe datetime