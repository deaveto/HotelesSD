import 'package:flutter/material.dart';
import 'package:newnoticias/models/location.model.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.locacion});

  LocationModel locacion;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.lightBlue,
        height: 400,
        child: Column(
          children: [
            Text(locacion.group),
            Text(locacion.geoId),            
          ],
        ),
      ),
    );
  }
}
