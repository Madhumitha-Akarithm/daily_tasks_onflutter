import 'package:flutter/material.dart';
import 'ConfirmPage.dart';

class BookingPage extends StatefulWidget {
  final Map<String , dynamic>movie;
  BookingPage({super.key, required this.movie});
  
  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
 int tickets=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Booking - ${widget.movie["title"]}"),),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade50, Colors.purple],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child:Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(widget.movie["image"],height: 200,),
              ),
              SizedBox(height: 20,),
              Text("Showtime:${widget.movie["time"]}",
              style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20,),

              //ticket counter
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove_circle,
                    color: Colors.red,),
                    onPressed: (){
                      if(tickets >= 1){
                        setState(() {
                          tickets--;
                        });
                      }
                    },
                  ),
                  Text("$tickets",style: TextStyle(fontSize: 22),),
                  IconButton(
                    icon: Icon(Icons.add_circle,
                    color: Colors.green,),
                    onPressed: (){
                      setState(() {
                        tickets++;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 30,),
              ElevatedButton.icon(
                  onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (_)=>ConfirmPage(movie:widget.movie,tickets:tickets,)),
                );
                },
                icon: Icon(Icons.check),
                label: Text("Confirm Booking"),
              ),
            ],
          ) ,
        ),
      ),
      );
  }
}
