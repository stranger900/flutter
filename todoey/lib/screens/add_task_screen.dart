import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task', textAlign: TextAlign.center,style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),),
            TextField(autofocus: true,textAlign: TextAlign.center,),
            FlatButton(
                onPressed: () {},
                child: Text('Add'),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
