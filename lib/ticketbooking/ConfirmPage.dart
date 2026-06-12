import 'package:flutter/material.dart';
import 'package:daily_tasks_onflutter/ticketbooking/BookingPage.dart';
import 'package:daily_tasks_onflutter/ticketbooking/movieListPage.dart';

class ConfirmPage extends StatelessWidget {
  final Map<String,dynamic>movie;
  final int tickets;
  const ConfirmPage({super.key, required this.movie, required this.tickets});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Booking Confirmed"),),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[ Colors.greenAccent, Colors.lightGreen],
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 80,),
              SizedBox(height: 20,),
              Text(
                "You booked $tickets ticket(s) for ",
                style: TextStyle(fontSize: 20,
                color: Colors.white),
              ),
              Text(
                movie["title"],
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70
                ),
              ),
              Text(
                "Showtime: ${movie["time"]}",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              ElevatedButton.icon(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_)=>movieList()) ,
                      //(route), //remove all previous routes
                  );
                },
                icon: Icon(Icons.home),
                label: Text("Back to Movie List"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
