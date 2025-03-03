import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //Lista de donas
  final List donutsOnSale = [
    //[donutFlavor, donutPrice, donutColor, imageName]
   ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
   ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
   ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
   ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GriedView.builder(
      //Cuantos elementos tiene
      itemCount: donutsOnSale.length;
      Padding: const EdgeInsets.all(12),
      //Encargado de organizar la cuadrícula
      gridDelegate: const
      SliverGridDelegateWithFixedCrossAxisCount(
        //Determinar número de columnas
        crossAxisCount: 2),
        itemBuilder: (context, index){
          //Elemento individual de la cuadrícula
          return DonutTile(
            donutFlavor: donutsOnSale[index[0]],
            donutPrice: donutsOnSale[index[1]],
            donutColor: donutsOnSale[index[2]],
            donutName: donutsOnSale[index[3]],
          );
        }
    );
  }
}