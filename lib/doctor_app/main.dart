import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'schedule_screen.dart';
import 'package:iconsax/iconsax.dart';

class MainPageDoctor extends StatefulWidget {
  const MainPageDoctor({super.key});

  @override
  State<MainPageDoctor> createState() => _MainPageDoctorState();
}

class _MainPageDoctorState extends State<MainPageDoctor> {
  int selectedIndex = 0;
  final List pages = [
    const DoctorAppoinmentHomeScreen(),
    const Scaffold(),
    const ScheduleScreen(),
    const Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black26,
        selectedItemColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home5),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.message),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.calendar),
            label: "Schedule",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
          ),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}