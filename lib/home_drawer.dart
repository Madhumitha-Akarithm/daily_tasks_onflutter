import 'package:daily_tasks_onflutter/bmi_app/bmiApp.dart';
import 'package:daily_tasks_onflutter/counter_app/counter_app_prj.dart';
import 'package:daily_tasks_onflutter/ticketbooking/movieListPage.dart';
import 'package:flutter/material.dart';
import 'counter_app/counter_app_prj.dart';
import 'followUnfollow/followingPage.dart';
import 'quotes/quote_list.dart';
import 'My_profile/MyProfile.dart';
import 'ninja_id/ninja.dart';
import 'bottom_navigation/main.dart';
import 'loginpage_ui/HomePage.dart';

class homeDrawer extends StatelessWidget {
  const homeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page Drawer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height:250 ,
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.yellow[100],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("lib/images/madhu pic.jpeg"),
                        fit: BoxFit.contain,
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Madhumitha",
                  style: TextStyle(fontSize: 18,color: Colors.black),
                  ),
                  Text(
                    "madhumitha.s@akarithm.com",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exposure_plus_1),
              title: Text("Counter app"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>CounterPage()),
                    );
              },
            ),
            ListTile(
              leading: Icon(Icons.camera_alt_rounded),
              title: Text("Follow unfollow instagram"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Followingpage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.format_quote),
              title: Text("Quotes app"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>QuoteList()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person_3),
              title: Text("My_ Profile"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>MyProfile()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person_2_rounded),
              title: Text("Ninja_id"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>NinjaCard()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.pages_rounded),
              title: Text("Bottom ,Pages Navigation"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>MainPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text("Login Page UI"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>HomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.line_weight),
              title: Text("BMI Calculator app"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>BmiApp()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.movie),
              title: Text("Ticket Booking"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>movieList()),
                );
              },
            )

          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pinkAccent, Colors.orangeAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(
          child: Text(
            "Welcome to know about my Daily Tasks!",
            style: TextStyle(
              fontSize: 28,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 4,
                  color: Colors.black38,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),


    );
  }
}
