import 'package:flutter/material.dart';

class AddRecords extends StatefulWidget {
  @override
  _AddRecordsState createState() => _AddRecordsState();
}

class _AddRecordsState extends State<AddRecords> {
   String _Gender='';
   var q=null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add record"),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Name",
                    hintText: "Enter Employee name"
                  ),
                )),
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
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Email",
                      hintText: "Enter Employee email"
                  ),
                )),
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
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Mobile",
                      hintText: "Enter mobile number"
                  ),
                )),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 30),

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
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 4),
                    child: Text("Gender:",),
                    alignment: Alignment.centerLeft,
                  ),
                  Row(
                    //mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Radio(value: "Male", groupValue: _Gender,
                          onChanged:(value){
                        setState(() {
                          _Gender='Male';
                          print(_Gender);
                        });
                          }),
                      Text("Male",style: TextStyle(
                          fontSize: 18
                      ),),
                      Radio(value: "Female",
                          groupValue: _Gender,
                          onChanged:(value){
                            setState(() {
                              _Gender='Female';
                              print(_Gender);
                            });
                          }),

                      Text("Female",style: TextStyle(
                          fontSize: 18
                      ),),

                      Radio(
                          value: "Others", groupValue: _Gender,
                          onChanged:(value){
                            setState(() {
                              _Gender='Others';
                              print(_Gender);
                            });
                          }),
                      Text("Others",style: TextStyle(
                          fontSize: 18
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 30),
              padding: EdgeInsets.only(left: 20,right: 20),
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
              child: new DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: q,
                  items: [
                    DropdownMenuItem(
                        child: Text("10th"),
                    value: '10th',),
                    DropdownMenuItem(
                      child: Text("12th"),
                      value: '12th',),
                    DropdownMenuItem(
                      child: Text("Graduation"),
                      value: 'G',),
                    DropdownMenuItem(
                      child: Text("Post Graduation"),
                      value: 'PG',),
                ],
                  hint: Text("Select Qualification"),
                  isExpanded: true,
                  onChanged: (String ? value){
                    setState(() {
                      q=value!;
                      print(value);
                    });
                  },
                ),
              ),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.only(left: 20,right: 20,top: 30),
              padding: EdgeInsets.only(left: 20,right: 20),
             // alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue,
                 // color: Colors.white,
                  //border: Border.all(color: Colors.black,width: 1),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black,
                      blurRadius: 9,
                      offset: Offset.zero,
                    )
                  ]
              ),
              child: ElevatedButton(
                child: Text("Submit",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22
                ),),
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
      ),
    );
  }
}
