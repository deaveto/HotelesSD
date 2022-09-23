import 'dart:html';
import 'package:flutter/material.dart';
import 'consulta.page.dart';

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
            fit: BoxFit
                .fitHeight, //Configure la altura de la fuente para que coincida con el ancho del cuadro de destino. Puede hacer que la fuente desborde el cuadro de destino horizontalmente.
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4),
                BlendMode
                    .dstATop), //Establecer transparencia/opacidad de la imagen
            image: NetworkImage("assets/images/hotel.jpg"),
          ),
        ),
        child: Container(
          //Ingresar el logo
          height: 10,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("assets/images/logo.png"),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: Container(
                  child: Row(
                    children: [
                      Text(""),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => ConsultaPage())));
                },
                child: Container(
                  height: 50,
                  color: Color.fromARGB(255, 19, 184, 196),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Consultar",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
