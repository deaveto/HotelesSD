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
        color: Colors.lightBlue,
        height: 400,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(hotel.name),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Estrellas: " + hotel.starRating.toString()),
                  Image.network(hotel.thumbnaiUrl.split('?')[0], width: 300),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
