import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newnoticias/models/hotel.model.dart';
import 'package:newnoticias/providers/hoteles.provider.dart';
import 'package:newnoticias/widgets/card.widget.dart';
import '../models/location.model.dart';

class ResultadoPage extends StatefulWidget {
  const ResultadoPage({super.key});

  @override
  State<ResultadoPage> createState() => _ResultadoPageState();
}

class _ResultadoPageState extends State<ResultadoPage> {
  final hotelProvider = HotelProvider();
  late Future<List<HotelModel>> hoteles;

  @override
  void initState() {
    hoteles = hotelProvider.obtenerHoteles();
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
