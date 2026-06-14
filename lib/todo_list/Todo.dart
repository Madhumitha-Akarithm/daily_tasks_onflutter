import 'package:flutter/material.dart';

class Todo {
  String title;
  bool isDone;

  //constructor
  Todo({required this.title, this.isDone=false});

  //convert to Map for storage
  Map<String, dynamic>toMap(){
    return{'title': title, 'isDone': isDone};
  }
  //convert back to map
  factory Todo.fromMap(Map<String,dynamic>map){
    return Todo(title: map['title'],isDone: map['isDone']);
  }
}