import 'package:flutter/material.dart';
import 'LiveScoreScr.dart';

class HomeFootball extends StatelessWidget {
  const HomeFootball({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back to home"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green,Colors.blueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_)=> LiveScoreScr()),
                  );
                },
                child: Text("Check Football Live Score"),
              ),
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
