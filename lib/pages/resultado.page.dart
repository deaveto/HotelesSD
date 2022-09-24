import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newnoticias/models/hotel.model.dart';
import 'package:newnoticias/providers/hoteles.provider.dart';
import 'package:newnoticias/providers/locations.provider.dart';
import 'package:newnoticias/widgets/card.widget.dart';
import '../models/location.model.dart';

class ResultadoPage extends StatefulWidget {
  ResultadoPage({
    super.key,
    required this.fechaEntrada,
    required this.fechaSalida,
  });

  String fechaEntrada;
  String fechaSalida;

  @override
  State<ResultadoPage> createState() => _ResultadoPageState(
      fechaEntrada: this.fechaEntrada, fechaSalida: this.fechaSalida);
}

class _ResultadoPageState extends State<ResultadoPage> {
  _ResultadoPageState({required this.fechaEntrada, required this.fechaSalida});
  String fechaEntrada;
  String fechaSalida;
  final hotelProvider = HotelProvider();
  //final LocationProvider =LocationProvider();
  late Future<List<HotelModel>> hoteles;
  //late Future<List<LocationModel>> locaciones;

  @override
  void initState() {
    hoteles = hotelProvider.obtenerHoteles(fechaEntrada, fechaSalida);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultados de los hoteles:  "),
      ),
      body: FutureBuilder(
        future: hoteles,
        builder: ((context, snapshot) {
          List<Widget> lista = [];

          if (snapshot.hasData) {
            snapshot.data
                ?.forEach((element) => lista.add(CardWidget(hotel: element)));
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
