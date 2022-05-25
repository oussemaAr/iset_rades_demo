import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget {
  static final textStyle = GoogleFonts.abel(color: Colors.white, fontSize: 36);

  static Widget informationField(String content) {
    return Text(content, style: textStyle);
  }

  static Widget informationCard(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        child: ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_circle_right_outlined),
        ),
      ),
    );
  }
}
