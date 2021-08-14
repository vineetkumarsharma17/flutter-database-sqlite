import 'package:add_delete_edit_record_sqlite/addEmployee.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddRecords(),
    );
  }
}
TextStyle ts=TextStyle(
  fontSize: 24,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Record"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 60,
              child: ElevatedButton(
                  onPressed: (){
                  },
                  child: Text("Add Employee",style: ts,),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 300,
              height: 60,
              child: ElevatedButton(
                onPressed: (){
                },
                child: Text("Search Employee",style: ts,),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 300,
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                 // backgroundColor: MaterialStateProperty.all(v)
                ),
                onPressed: (){
                },
                child: Text("View all employee",style: ts,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

