import 'dart:convert';

import '../models/hotel.model.dart';
import 'package:http/http.dart' as http;

class HotelProvider {
  Future<List<HotelModel>> obtenerHoteles() async {
    List<HotelModel> hoteles = [];
    var client = http.Client();

    try {
      Map<String, String> parametros = {
        'destinationId': '1506246',
        'pageNumber': '1',
        'pageSize': '6',
        'checkIn': '2022-09-24',
        'checkOut': '2022-09-26',
        'adults1': '2',
        'sortOrder': 'PRICE',
        'locale': 'en_US',
        'currency': 'USD'
      };

      Map<String, String> cabecera = {
        'X-RapidAPI-Key': '413ff119a6msh961ec950225f58bp1dc432jsne17fe81a6a45',
        'X-RapidAPI-Host': 'hotels4.p.rapidapi.com',
      };

      var url =
          Uri.https('hotels4.p.rapidapi.com', 'properties/list', parametros);
      var response = await http.get(url, headers: cabecera);
      var decodeResponse =
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;

      print(decodeResponse["data"]["body"]["searchResults"]["results"]);
      decodeResponse["data"]["body"]["searchResults"]["results"]
          .forEach((item) => hoteles.add(HotelModel.fromJson(item)));

      print(hoteles);
      return hoteles;
    } finally {
      client.close();
    }
  }
}
