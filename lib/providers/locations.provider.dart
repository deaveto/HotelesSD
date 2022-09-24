import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/location.model.dart';

class LocationProvider {
  Future<List<LocationModel>> obtenerLocaciones() async {
    List<LocationModel> locaciones = [];
    var client = http.Client();

    try {
      Map<String, String> parametros= {
        'query': 'bogota',
        'locale': 'es_es',
       'currency': 'COP'};

      Map<String, String> cabecera = {
        'X-RapidAPI-Key': '413ff119a6msh961ec950225f58bp1dc432jsne17fe81a6a45',
        'X-RapidAPI-Host': 'hotels4.p.rapidapi.com',
      };

      var url =
          Uri.https('hotels4.p.rapidapi.com', 'locations/v2/search', parametros);
      var response = await http.get(url, headers: cabecera);
      var decodeResponse =
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;

      decodeResponse["suggestions"]["group"]
          .forEach((item) => locaciones.add(LocationModel.fromJson(item)));
      
      print(locaciones);      
      return locaciones;
      
    } finally {
      client.close();
    }
  }
}
