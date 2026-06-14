import 'package:flutter/material.dart';
import 'Todo.dart';
import 'TodoItem.dart';

class HomeScrTodo extends StatefulWidget {
  const HomeScrTodo({super.key});

  @override
  State<HomeScrTodo> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScrTodo> {

  List<Todo> todos=[];
  TextEditingController controller=TextEditingController();

  void addTodo(){
    if(controller.text.isEmpty) return;
    setState(() {
      todos.add(Todo(title: controller.text));
    });
  }
  
  void toggleTodo(int index) {
    setState(() {
      todos[index].isDone = !todos[index].isDone;
    });
  }
    
    void delTodo(int index){
      setState(() {
        todos.removeAt(index);
      });
    }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To-Do-List"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow.shade100, Colors.orange.shade200],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: "Enter task",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: addTodo,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context,index){
                  return TodoItem(
                      todo:todos[index] ,
                      onToggle: ()=>toggleTodo(index),
                      onDel: ()=>delTodo(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.add,color: Colors.white,),
        onPressed: addTodo,
      ),
    );
  }
}
