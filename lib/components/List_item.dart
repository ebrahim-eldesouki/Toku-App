import 'package:flutter/material.dart';
import 'package:toku/components/item%20info.dart';
import '../models/Item model .dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.item, required this.color}) : super(key: key);

  final ItemModels item;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ,
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF6DC), child: Image.asset(item.image)),
          Expanded(child: ItemInfo(item: item)),

        ],
      ),
    );
  }
}

