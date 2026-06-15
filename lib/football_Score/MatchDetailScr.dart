import 'package:flutter/material.dart';
import 'StatBar.dart';

class  MatchDetailScr extends StatelessWidget {

  final Map<String,dynamic>match;
  const MatchDetailScr({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${match['home']} vs ${match['away']}"),
        backgroundColor: Colors.green,
      ),
      body:Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipOval(child: Image.network(match['homeLogo'], width: 50, height: 50)),
                SizedBox(width: 10),
                Text("vs", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(width: 10),
                ClipOval(child: Image.network(match['awayLogo'], width: 50, height: 50)),
              ],
            ),
            SizedBox(height: 20),
            Text("Stadium: ${match['stadium']}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text("Score: ${match['score']}", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text("Stats", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            StatBar(label: "Shots on Target", value: 80),
            StatBar(label: "Possession", value: 34.4),
            StatBar(label: "Goals", value: 50),
            StatBar(label: "Yellow Cards", value: 20),
            StatBar(label: "Red Cards", value: 5),
          ],
        ),
      ),
    );
  }
}