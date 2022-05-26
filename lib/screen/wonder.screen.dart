import 'dart:math';

import 'package:flutter/material.dart';

class WonderScreen extends StatefulWidget {
  final String data;

  WonderScreen({required this.data});

  @override
  State<StatefulWidget> createState() {
    print(data);
    return _wonderScreenState();
  }
}

class _wonderScreenState extends State<WonderScreen> {
  List<String> imagesList = List.of({
    "china.png",
    "england.png",
    "europe.png",
    "italy.png",
    "mexico.png",
    "petra.png"
  });

  String shownImage = "china.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Image.asset("images/$shownImage"),
          ),
          OutlinedButton(
            onPressed: () {
              var randomPosition = Random().nextInt(6);
              setState(() {
                shownImage = imagesList[randomPosition];
              });
            },
            child: Text("Random"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Back"),
          ),
        ],
      ),
    );
  }
}
