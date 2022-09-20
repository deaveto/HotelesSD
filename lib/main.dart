import 'package:flutter/material.dart';
import 'package:newnoticias/pages/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hoteles SD',      
      theme: ThemeData.dark(),
      home: homePage(),//Dart sugiere utilizar una constante
    );
  }
}
