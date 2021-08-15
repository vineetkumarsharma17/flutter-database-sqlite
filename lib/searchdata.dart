import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SearchData extends StatefulWidget {
  const SearchData({Key? key}) : super(key: key);

  @override
  _SearchDataState createState() => _SearchDataState();
}

class _SearchDataState extends State<SearchData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search record"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(CupertinoIcons.back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black,width: 1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 9,
                    //spreadRadius: 8,
                    offset: Offset.zero,
                  )
                ]
            ),
            margin: EdgeInsets.only(left: 20,right: 20,top: 30),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Id",
                hintText: "Enter employee id",
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 200,
            margin: EdgeInsets.only(top: 100),
            padding: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black,width: 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ElevatedButton(
              child: Text("Search Record"),
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                elevation: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
