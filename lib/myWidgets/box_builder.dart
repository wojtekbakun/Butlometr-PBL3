import 'package:butlometr/myWidgets/smart_box.dart';
import 'package:flutter/material.dart';

class BoxBuilder extends StatelessWidget {
  BoxBuilder({super.key});

  final List<BoatData> boats = [
    BoatData('Swinoujscie', 'Nocny Blutus', 001, 011, false, 1),
    BoatData('Miedzyzdroje', 'Pachnąca szprot', 001, 011, true, 2),
    BoatData('Gdansk', 'Marklera', 001, 011, false, 3),
    BoatData('Swinoujscie', 'Nocny Blutus', 001, 011, false, 1),
    BoatData('Miedzyzdroje', 'Pachnąca szprot', 001, 011, true, 2),
    BoatData('Gdansk', 'Marklera', 001, 011, false, 3),
    // Dodaj więcej elementów według potrzeb
  ];

// TODO How to automatically assign boats alternately to two columns

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          final startIndex = index * 2;
          return Row(
            children: List.generate(2, (index) {
              return SmartBox(
                isBoatActive: boats[index].czyUzywana,
                rozmiarPanelu: boats[index].rozmiarPanelu,
              );
            }),
          );
        },
      ),
    );
  }
}

class BoatData {
  final String idMiejscowosci;
  final String idLodzi;
  final int idPanelu;
  final int idButli;
  final bool czyUzywana;
  final int rozmiarPanelu;

  BoatData(
    this.idMiejscowosci,
    this.idLodzi,
    this.idPanelu,
    this.idButli,
    this.czyUzywana,
    this.rozmiarPanelu,
  );
}
