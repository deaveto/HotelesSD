import 'package:flutter/material.dart';
import 'package:newnoticias/providers/locations.provider.dart';
import 'package:newnoticias/widgets/card.widget.dart';
import '../models/location.model.dart';

class ResultadoPage extends StatefulWidget {
  const ResultadoPage({super.key});

  @override
  State<ResultadoPage> createState() => _ResultadoPageState();
}

class _ResultadoPageState extends State<ResultadoPage> {
  final LocationProvider =LocationProvider();
  late Future<List<LocationModel>> locaciones;

  @override
  void initState() {
    locaciones=LocationProvider.obtenerLocaciones();
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultados de los hoteles"),
      ),
      body: FutureBuilder(
        future: locaciones,
        builder: ((context, snapshot) {
          List<Widget> lista = [];

          if (snapshot.hasData) {  //corregir error de visualización
            snapshot.data
                ?.forEach((element) => lista.add(CardWidget(hotel: element,)));
            return ListView(
              children: lista, 
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        }),
      ),
    );
  }
}
