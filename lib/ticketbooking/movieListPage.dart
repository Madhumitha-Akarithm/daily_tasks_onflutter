import 'package:flutter/material.dart';
import 'BookingPage.dart';

class movieList extends StatelessWidget {
  movieList({super.key});

  final List<Map<String, dynamic>> movies =[
    {
      "title":"Avengers : Endgame",
      "image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeGzGQirpNtjrJuPd1-rHeWoF5s1zGsI7N4A&s",
      "time" : "7:00PM"
    },
    {
      "title" : "Obsession",
      "image" :"https://resizing.flixster.com/T7l19tmQmSQ6bu6Abx8PUfvzT3s=/fit-in/352x330/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p24418248_b_v9_af.jpg",
      "time":"9.30 PM"
    },
    {
      "title": "Bagubali",
      "image":"https://upload.wikimedia.org/wikipedia/en/thumb/5/5f/Baahubali_The_Beginning_poster.jpg/250px-Baahubali_The_Beginning_poster.jpg",
      "time":"12.00 PM"
    },
    {
      "title":"KGF",
      "image":"https://m.media-amazon.com/images/M/MV5BZmQzZjVkZTUtYjI4ZC00ZDJmLWI0ZDUtZTFmMGM1Mzc5ZjIyXkEyXkFqcGc@._V1_.jpg",
      "time":"10.00 AM"

    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ticket Booking"),),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple,Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context,index){
            final movie=movies[index];
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Image.network(movie["image"],width: 60,fit: BoxFit.cover,),
                title: Text(movie["title"]),
                subtitle: Text("Showtime :${movie["time"]}"),
                trailing: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (_)=>BookingPage(movie:movie)),
                    );
                  }, child: Text("Book"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
