import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Hoteles SD")),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            //fit: BoxFit.fitWidth,
            fit: BoxFit.fitHeight,
            image: NetworkImage("assets/images/hotel.jpg"),
          ),
        ),
      ),
    );
  }
}
