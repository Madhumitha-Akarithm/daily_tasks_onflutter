import 'package:flutter/material.dart';
import 'model.dart';
import 'utils.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        title: const Text("All Tasks"),
        backgroundColor: kheaderColor,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(task.profileImage),
              ),
              title: Text(task.title, style: TextStyle(color: textColor)),
              subtitle: Text("${task.subtitle} • ${task.remainingTime}",
                  style: TextStyle(color: secondTextColor)),
              trailing: Text(task.currentTime,
                  style: const TextStyle(color: Colors.black)),
            ),
          );
        },
      ),
    );
  }
}
