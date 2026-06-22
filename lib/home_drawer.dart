import 'package:daily_tasks_onflutter/bmi_app/bmiApp.dart';
import 'package:daily_tasks_onflutter/counter_app/counter_app_prj.dart';
import 'package:daily_tasks_onflutter/deepseek_ai/deepseekmain.dart';
import 'package:daily_tasks_onflutter/doctor_app/main.dart';
import 'package:daily_tasks_onflutter/football_Score/HomeFootball.dart';
import 'package:daily_tasks_onflutter/mobile_banking/bankHome.dart';
import 'package:daily_tasks_onflutter/plant_app/plant_home_scr.dart';
import 'package:daily_tasks_onflutter/school_app/managementScr.dart';
import 'package:daily_tasks_onflutter/ticketbooking/movieListPage.dart';
import 'package:daily_tasks_onflutter/todo_list/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'counter_app/counter_app_prj.dart';
import 'followUnfollow/followingPage.dart';
import 'quotes/quote_list.dart';
import 'My_profile/MyProfile.dart';
import 'ninja_id/ninja.dart';
import 'bottom_navigation/main.dart';
import 'loginpage_ui/HomePage.dart';

class homeDrawer extends StatefulWidget {
  const homeDrawer({super.key});

  @override
  State<homeDrawer> createState() => _homeDrawerState();
}

class _homeDrawerState extends State<homeDrawer> {
  // Controller lets us attach a visible, drag-able Scrollbar to the list
  final ScrollController _drawerScrollController = ScrollController();

  @override
  void dispose() {
    _drawerScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page Drawer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        // SafeArea ensures items aren't clipped behind status bar / system UI
        child: SafeArea(
          // Scrollbar gives a manual, always-visible, drag-able scroll handle
          // on the right edge of the drawer — works even if touch-drag
          // scrolling on the list itself isn't registering.
          child: Scrollbar(
            controller: _drawerScrollController,
            thumbVisibility: true, // always show the scrollbar thumb
            trackVisibility: true, // always show the scrollbar track
            thickness: 8,
            radius: const Radius.circular(8),
            child: ListView(
              controller: _drawerScrollController,
              padding: EdgeInsets.zero,
              // ALWAYS scrollable, even if content is short — and definitely
              // scrollable once content overflows (which is your case)
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                UserAccountsDrawerHeader(
                  accountName: const Text("Madhumitha",style: TextStyle(color: Colors.blueGrey),),
                  accountEmail: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("madhumitha.s@akarithm.com", style: TextStyle(color: Colors.blueGrey),),
                      Text("https://github.com/Madhumitha-Akarithm", style: TextStyle(color: Colors.blueGrey),)
                    ],
                  ),
                  currentAccountPicture: ClipOval(
                    child: Image.asset("lib/images/madhu pic.jpeg",
                    fit: BoxFit.contain,),
                  ),
                  decoration: const BoxDecoration(color: Colors.yellow),
                  // Slightly shorter header so more list items fit on screen
                  margin: EdgeInsets.zero,
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.exposure_plus_1),
                  title: const Text("Counter app"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => CounterPage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.camera_alt_rounded),
                  title: const Text("Follow unfollow instagram"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Followingpage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.format_quote),
                  title: const Text("Quotes app"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => QuoteList()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person_3),
                  title: const Text("My Profile"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MyProfile()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person_2_rounded),
                  title: const Text("Ninja Id"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => NinjaCard()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.pages_rounded),
                  title: const Text("Bottom Pages Navigation"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MainPage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.login_outlined),
                  title: const Text("Login Page UI"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomePage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.line_weight),
                  title: const Text("BMI Calculator app"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => BmiApp()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.movie),
                  title: const Text("Ticket Booking"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => movieList()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.work),
                  title: const Text("To do list"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomeScrTodo()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.sports_soccer_rounded),
                  title: const Text("Football Score"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomeFootball()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.computer_rounded),
                  title: const Text("DeepSeek-AI"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ChatScr()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.transfer_within_a_station_rounded),
                  title: const Text("Online Banking"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MainHomeScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.school_rounded),
                  title: const Text("School management "),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SchoolManagementScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.account_tree),
                  title: const Text("Plant app"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => PlantsHomeScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.local_hospital_rounded),
                  title: const Text("Doctor appointment "),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MainPageDoctor()));
                  },
                ),

              ],
            ), // ListView
          ), // Scrollbar
        ), // SafeArea
      ), // Drawer
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
