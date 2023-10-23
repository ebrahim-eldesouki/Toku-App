import 'package:flutter/material.dart';
import 'package:toku/components/List_item.dart';

import '../models/Item model .dart';

class NumbersPage extends StatelessWidget {
  final List<ItemModels> numbers = const [
    ItemModels(
        sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jaName: 'Ichi',
        enName: 'One'),
    ItemModels(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jaName: "Ni",
        enName: 'Two'),
    ItemModels(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jaName: 'San',
        enName: 'Three'),
    ItemModels(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jaName: 'Shi',
        enName: 'Four'),
    ItemModels(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jaName: 'Go',
        enName: 'Five'),
    ItemModels(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jaName: 'Roku',
        enName: 'Six'),
    ItemModels(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jaName: 'Sebun',
        enName: 'Seven'),
    ItemModels(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jaName: 'Hachi',
        enName: 'Eight'),
    ItemModels(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jaName: 'Kyū',
        enName: 'Nine'),
    ItemModels(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jaName: 'Jū',
        enName: 'Ten'),
  ];

  const NumbersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'Numbers',
              style: TextStyle(fontSize: 30),
            ),
            backgroundColor: const Color(0xff49332B)),
        body: ListView.builder(
            itemCount:  numbers.length,
            itemBuilder: (context , index){

              return ListItem(item: numbers[index], color: const Color(0xffF99537),);

            },
        ),
    );
  }


}
