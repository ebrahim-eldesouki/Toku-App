import 'package:flutter/material.dart';
import 'package:toku/components/List_item.dart';

import '../models/Item model .dart';

class ColorsPage extends StatelessWidget {
  final List<ItemModels> numbers = const [
    ItemModels(
      sound: 'sounds/colors/black.wav',
      jaName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    ItemModels(
      sound: 'sounds/colors/brown.wav',
      jaName: 'Chairo',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    ItemModels(
      sound: 'sounds/colors/dusty yellow.wav',
      jaName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    ItemModels(
      sound: 'sounds/colors/gray.wav',
      jaName: 'Gurē',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    ItemModels(
      sound: 'sounds/colors/green.wav',
      jaName: 'Midori',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    ItemModels(
      sound: 'sounds/colors/red.wav',
      jaName: 'Aka',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
   ),

  ];

  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Colors',
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: const Color(0xff49332B)),
      body: ListView.builder(

        itemCount:  numbers.length,
        itemBuilder: (context , index){

          return Container(
              height: 110,
              child: ListItem(item: numbers[index], color: const Color(0xff7D3F9E),));

        },
      ),
    );
  }


}

