import 'package:flutter/material.dart';
import 'resultado.page.dart';

class ConsultaPage extends StatelessWidget {
  ConsultaPage({super.key});

  @override
  Widget build(BuildContext context) {
    String ciudadA = "bogota";
    String cantidadA = "";
    String tiempoA = "";
    return Scaffold(
      appBar: AppBar(title: Text(" ")),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("assets/images/banner.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("assets/images/logo2.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("assets/images/texto.png"),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [Text(" ")],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "  Ingrese Ciudad:     ",
                  style: TextStyle(color: Color.fromARGB(255, 19, 184, 196)),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 26,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text("                                        "),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "  Fecha de entrada: ",
                  style: TextStyle(color: Color.fromARGB(255, 19, 184, 196)),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 26,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'YYYY-MM-DD',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text("                                        "),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "  Fecha de salidad:  ",
                  style: TextStyle(color: Color.fromARGB(255, 19, 184, 196)),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 26,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'YYYY-MM-DD',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text("                                        "),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => ResultadoPage())));
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
    );
  }
}
