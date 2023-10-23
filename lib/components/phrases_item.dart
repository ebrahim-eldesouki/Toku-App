import 'package:audioplayers/audioplayers.dart';
import 'package:toku/models/Item%20model%20.dart';
import 'package:flutter/material.dart';


class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.item, required this.color}) : super(key: key);

  final Color color ;
  final ItemModels item ;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child:  Row(
        children: [
          const Spacer(
            flex: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 330,
                child: Text(
                  item.enName,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              SizedBox(
                width: 330,
                child: Text(
                  item.jaName,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      ),
                ),
              ),
              SizedBox(height: 19,),
            ],
          ),
          const Spacer(
            flex: 60,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(item.sound));
            },
            icon: const Icon(
              Icons.arrow_right,
              color: Colors.white,
              size: 55,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
