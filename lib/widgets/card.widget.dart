import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newnoticias/models/hotel.model.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.hotel});

  HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text(hotel.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "N° de estrellas:  " + hotel.starRating.toString()),
                        Text("Dirección:  " + hotel.streetAddress),
                        Text("Precio:  " + hotel.current + " Noche"),
                        Text("Habitaciones restantes:  " + hotel.roomsLeft),
                        Text("Numero de contacto:  " +
                            hotel.supplierHotelId.toString()),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          hotel.thumbnaiUrl.split('?')[0],
                          width: 200,
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          //BORDE DEL CUADRO REDONDE
          color: Color.fromARGB(255, 98, 203, 230),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
