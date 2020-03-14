import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/screens/add_task_screen.dart';
import '../widget/TaskList.dart';

class TasksScreen extends StatelessWidget {

  //Widget buildButtomSheet(BuildContext context) => Container();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context)  => AddTaskScreen());
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 30, right: 30, left: 30, top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.list, size: 30,color: Colors.lightBlueAccent,),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
                ),
                Text(
                  '12 tasks',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}


