import 'package:add_delete_edit_record_sqlite/addEmployee.dart';
import 'package:add_delete_edit_record_sqlite/searchdata.dart';
import 'package:add_delete_edit_record_sqlite/showAll.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddRecords()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchData()));
                },
                child: Text("Search Employee",style: ts,),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 20,right: 20),
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20)),
                //border: Border.all(color: Colors.black,width: 2),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    offset: Offset.zero,
                    blurRadius: 12,
                  )
                ]
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllRecord()));
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

