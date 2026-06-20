import 'package:flutter/material.dart';
import 'apphomeScr.dart';
import 'calendar.dart';
import 'tasksPage.dart';
import 'chatPage.dart';
import 'statPage.dart';
import 'utils.dart';

class SchoolManagementScreen extends StatefulWidget {
  const SchoolManagementScreen({super.key});

  @override
  _SchoolManagementScreenState createState() => _SchoolManagementScreenState();
}

class _SchoolManagementScreenState extends State<SchoolManagementScreen> {
  int selectedIndex = 0;
  final List pages = [
    const AppHomePage(),
    const StatisticsPage(),
    const TasksPage(),
    const CalendarPage(),
    const ChatPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("******"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: kBackground,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.insert_chart,
            ),
            label: "stats",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.done,
            ),
            label: "tasks",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
            ),
            label: "calendar",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble,
            ),
            label: "chat",
          ),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}