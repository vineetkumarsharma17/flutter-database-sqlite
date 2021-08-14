import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//     );
//   }
// }
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Record"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
              },
              child: Text("Add Employee"),
          ),
          ElevatedButton(
            onPressed: (){
            },
            child: Text("Search Employee"),
          ),
          ElevatedButton(
            onPressed: (){
            },
            child: Text("Add Employee"),
          ),
        ],
      ),
    );
  }
}

