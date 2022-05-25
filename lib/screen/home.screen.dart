import 'package:flutter/material.dart';
import 'package:iset_rades_app/widgets/text/text.widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("Hello ISET RADES"),
        backgroundColor: Colors.teal[700],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(
          Icons.alarm,
        ),
      ),
      drawer: Drawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/image.png"),
              radius: 80,
            ),
            TextWidget.informationField("Oussema AROUA"),
            TextWidget.informationField("Mobile Developer"),
            Divider(
              color: Colors.white,
              indent: 36,
              endIndent: 36,
              thickness: 2,
            ),
            TextWidget.informationCard("+216 50 000 000", Icons.phone),
            TextWidget.informationCard("oussama.aroua@orange.com", Icons.email),
            ElevatedButton(
              onPressed: () {
                print("Pressed");
              },
              onLongPress: () {
                print("onLongPress");
              },
              child: Text("let's play a game"),
            )
          ],
        ),
      ),
    );
  }
}
