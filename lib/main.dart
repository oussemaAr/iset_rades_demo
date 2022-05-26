import 'package:flutter/material.dart';
import 'package:iset_rades_app/screen/wonder.screen.dart';

import 'screen/home.screen.dart';

void main() {
  runApp(MaterialApp(
    color: Colors.greenAccent,
    initialRoute: "/",
    routes: {
      "/": (context) => HomeScreen(),
      "/wonder": (context) => WonderScreen(data: "test data")
    },
  ));
}
