import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/Item%20model%20.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({Key? key, required this.item}) : super(key: key);

  final ItemModels item ;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Spacer(
        flex: 5,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            item.jaName,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            item.enName,
            style: const TextStyle(
                color: Colors.black54,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
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
    ],);
  }
}
