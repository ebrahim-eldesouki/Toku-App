import 'package:flutter/material.dart';
import 'package:toku/components/phrases_item.dart';
import '../models/Item model .dart';




class PhrasesPage extends StatelessWidget {

  final List<ItemModels> phrasesList = const [
    ItemModels(
        sound: 'sounds/phrases/what_is_your_name.wav',
        image: '',
        jaName: 'Anata no namae wa nanidesu ka? ',
        enName: 'What is your name?'),
    ItemModels(
        sound: 'sounds/phrases/are_you_coming.wav',
        image: '',
        jaName: " Kimasu ka?",
        enName: 'Are you coming ?'),
    ItemModels(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        image: '',
        jaName: 'Kōdoku suru koto o wasurenaide kudasai?',
        enName: 'Don''t forget to subscribe?'),
    ItemModels(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        image: '',
        jaName: 'Go kibun wa ikagadesu ka?',
        enName: 'How are you feeling ?'),
    ItemModels(
        sound: 'sounds/phrases/i_love_anime.wav',
        image: '',
        jaName: 'Watashi wa anime ga daisukidesu',
        enName: 'I love anime'),
    ItemModels(
        sound: 'sounds/phrases/i_love_programming.wav',
        image: '',
        jaName: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'I love programing'),
    ItemModels(
        sound: 'sounds/phrases/programming_is_easy.wav',
        image: '',
        jaName: 'Puroguramingu wa kantandesu',
        enName: 'Programing is easy'),
    ItemModels(
        sound: 'sounds/phrases/where_are_you_going.wav',
        image: '',
        jaName: 'Dokoheikunodesu ka?',
        enName: 'Where are you going ?'),
    ItemModels(
        sound: 'sounds/phrases/yes_im_coming.wav',
        image: '',
        jaName: 'Imouto',
        enName: "Yes i'm coming"),

  ];

  const PhrasesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Phrases',
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: const Color(0xff49332B)),
      body: ListView.builder(
        itemCount:  phrasesList.length,
        itemBuilder: (context , index){

          return  SizedBox(
            height: 120,
            child: PhrasesItem(
                item: phrasesList[index], color: const Color(0xff47A5C8)),
          );



        },
      ),
    );
  }


}

