import 'package:flutter/material.dart';
import 'Todo.dart';

class TodoItem extends StatelessWidget {

  final Todo todo;
  final Function onToggle;
  final Function onDel;

  const TodoItem({super.key, required this.todo, required this.onToggle, required this.onDel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        todo.title,
        style: TextStyle(
          decoration: todo.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      leading: Checkbox(
        value: todo.isDone,
        onChanged: (_)=>onToggle(),
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete,color: Colors.red,),
        onPressed: ()=>onDel(),
      ),
    );
  }
}
