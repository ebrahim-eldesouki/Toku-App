import 'package:flutter/material.dart';
import 'package:toku/screens/colors page.dart';
import 'package:toku/screens/family_members.dart';
import 'package:toku/screens/phrases%20page.dart';
import '../components/category_item.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Toku',
            style: TextStyle(fontSize: 40),
          ),
          backgroundColor: const Color(0xff49332B)),
      backgroundColor: const Color(0xffFFF4DA),
      body: Column(
        children: [
          Container(
            height: 157,
            child: Category(const Color(0xffF99537), "Numbers", () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NumbersPage()));
            }),
          ),
          Container(
            height: 150,
            child: Category(const Color(0xff528135), "Family Members", () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FamilyMembers()));
            }),
          ),
          Container(
            height: 160,
            child: Category(const Color(0xff7D3F9E), "Colors", () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=>const ColorsPage() ));
            }),
          ),
          Container(
            height: 160,
            child: Category(const Color(0xff47A5C8), "Phrases", () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=>const PhrasesPage() ));

            }),
          ),
        ],
      ),
    );
  }
}
//color: Color(0xffF99537)
