import 'package:flutter/material.dart';
import 'package:toku/components/List_item.dart';

import '../models/Item model .dart';

class FamilyMembers extends StatelessWidget {
  final List<ItemModels> numbers = const [
    ItemModels(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jaName: 'Chichioya',
        enName: 'Father'),
    ItemModels(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jaName: "Hahaoya",
        enName: 'Mother'),
    ItemModels(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jaName: 'Musume',
        enName: 'Daughter'),
    ItemModels(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jaName: 'Musuko',
        enName: 'Son'),
    ItemModels(
        sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jaName: 'Nisan',
        enName: 'Older brother'),
    ItemModels(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jaName: 'Ane',
        enName: 'Older sister'),
    ItemModels(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jaName: 'Sobo',
        enName: 'Grand mother'),
    ItemModels(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jaName: 'Ogisan',
        enName: 'Grand father'),
    ItemModels(
        sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jaName: 'Imouto',
        enName: 'Younger sister'),
    ItemModels(
        sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jaName: 'Otouto',
        enName: 'Younger brother'),
  ];

  const FamilyMembers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Family Members',
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: const Color(0xff49332B)),
      body: ListView.builder(
        itemCount:  numbers.length,
        itemBuilder: (context , index){

          return ListItem(item: numbers[index], color: const Color(0xff528135),);

        },
      ),
    );
  }


}

