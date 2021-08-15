import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Employee{
  String fname;
  //int id;
  String email;
  String mobile;
  String gender;
  String qualification;
  Employee({required this.fname,
    required this.email,
    required this.mobile,
    required this.gender,
    required this.qualification,});
  static List<Employee> allData=<Employee>[
    Employee(fname: "Vineet", email: "Vk@gmail.com",mobile: "8874327867",
        gender: "Male",qualification: "Graduate"),
    Employee(fname: "Hashir", email: "Vk@gmail.com",mobile: "8874327867",
        gender: "Male",qualification: "Graduate"),
    Employee(fname: "Khalid", email: "Vk@gmail.com",mobile: "8874327867",
        gender: "Male",qualification: "Graduate"),
    Employee(fname: "Mariya", email: "Vk@gmail.com",mobile: "8874327867",
        gender: "Female",qualification: "PostGraduate"),



  ];
  static List<Employee> getUser(){
    return allData ;
  }
}
class AllRecord extends StatefulWidget {
  const AllRecord({Key? key}) : super(key: key);
  @override
  _AllRecordState createState() => _AllRecordState();
}

class _AllRecordState extends State<AllRecord> {
  late List <Employee> emp;
  void initState(){
    emp=Employee.getUser();
    super.initState();
  }
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
        children: [
          Expanded(child:tableBody(context) )
        ],
      ),
    );
  }
  SingleChildScrollView tableBody(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 10,
          decoration:BoxDecoration(
            border: Border.all(color: Colors.black)
        ) ,
          dataRowHeight: 40,
          dividerThickness: 3,
          columns: [
            DataColumn(label: Text("First Name",style: TextStyle(
              color: Colors.orange,
              fontStyle: FontStyle.italic,
            ),),
              tooltip: "This is first name",
            ),
            DataColumn(label: Text("Email",style: TextStyle(
              color: Colors.orange,
              fontStyle: FontStyle.italic,
            ),),
              //tooltip: "This is email",
            ),
            DataColumn(label: Text("Mobile",style: TextStyle(
              color: Colors.orange,
              fontStyle: FontStyle.italic,
            ),),
              //tooltip: "This is first name",
            ),
            DataColumn(label: Text("Gender",style: TextStyle(
              color: Colors.orange,
              fontStyle: FontStyle.italic,
            ),),
            ),
            DataColumn(label: Text("Qualification",style: TextStyle(
              color: Colors.orange,
              fontStyle: FontStyle.italic,
            ),),
            ),
            DataColumn(label: Text("Edit",style: TextStyle(
              color: Colors.orange,
              fontStyle: FontStyle.italic,
            ),),
              //tooltip: "This is email",
            ),
            DataColumn(label: Text("Delete",style: TextStyle(
              color: Colors.orange,
              fontStyle: FontStyle.italic,
            ),),
              //tooltip: "This is email",
            ),
          ],
          rows: emp.map((emp) => DataRow(
            cells: [
              DataCell(Text(emp.fname)),
              DataCell(Text(emp.email)),
              DataCell(Text(emp.mobile)),
              DataCell(Text(emp.gender)),
              DataCell(Text(emp.qualification)),
              DataCell(Icon(Icons.edit)),
              DataCell(Icon(Icons.delete)),
            ]
          )).toList(),
        ),
      ),
    );
  }
}
