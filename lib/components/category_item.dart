import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(this.color, this.text, this.onTap, {Key? key}) : super(key: key);

 final String? text;

  final Color? color;

 final Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 25),
        alignment: AlignmentDirectional.centerStart,
        color: color!,
        width: double.infinity,
        height: 80,
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white , fontSize: 25),
        ),
      ),
    );
  }



}
