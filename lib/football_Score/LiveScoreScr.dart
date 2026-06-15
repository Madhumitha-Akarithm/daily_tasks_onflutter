import 'package:flutter/material.dart';
import 'MatchDetailScr.dart';

class LiveScoreScr extends StatelessWidget {

  final List<Map<String, dynamic>>matches=[
    {
      "home" : "Chelsea",
      "away" : "Leicester city",
      "stadium" : "St James Park",
      "score" : "0 : 3",
      "homeLogo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqknLk4CN0itnHQezejwdpQ57YLEFvM0eWeg&s",
      "awayLogo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNjxhR46f3cA6x5IRHk1cV35mOEEEsxAye9Q&s"
    },
    {
      "home" : "Barcelona",
      "away" : "Bayern",
      "stadium" : "Camp Nou",
      "score" : "2 :0",
      "homeLogo": "https://upload.wikimedia.org/wikipedia/sco/thumb/4/47/FC_Barcelona_%28crest%29.svg/3840px-FC_Barcelona_%28crest%29.svg.png",
      "awayLogo":"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/FC_Bayern_M%C3%BCnchen_logo_%282017%29.svg/500px-FC_Bayern_M%C3%BCnchen_logo_%282017%29.svg.png"
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Football Live Score"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("Live Matches",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          ...matches.map((match)=>InkWell(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (_)=>MatchDetailScr(match: match)),
              );
            },
            child: Card(
              color: Colors.black87, // 🔹 black rectangle background
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Home Team
                    Row(
                      children: [
                        ClipOval(
                          child: Image.network(match['homeLogo'], width: 40, height: 40),
                        ),
                        SizedBox(width: 8),
                        Text(match['home'], style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),

                    // Score
                    Text(match['score'], style: TextStyle(color: Colors.yellow[700], fontSize: 20, fontWeight: FontWeight.bold)),

                    // Away Team
                    Row(
                      children: [
                        Text(match['away'], style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(width: 8),
                        ClipOval(
                          child: Image.network(match['awayLogo'], width: 40, height: 40),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}