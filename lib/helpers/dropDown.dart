import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({Key? key}) : super(key: key);

  @override
  MyDropDownState createState() => MyDropDownState();
}

class MyDropDownState extends State<MyDropDown> {
  final List<String> subjects = [
    "Sort by",
    "Common",
    "Reading Route",
    "Address"
  ];

  String selectedSubject = "Sort by";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 2,
        padding: EdgeInsets.only(left: 16, right: 16),
        //color: Colors.grey,

        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(8)),

        child: DropdownButton<String>(
          hint: Text("Sort by"),
          // dropdownColor: Colors.black,
          elevation: 5,
          value: selectedSubject,
          underline: null,
          onChanged: (value) {
            setState(() {
              selectedSubject = value!;
            });
          },
          items: subjects.map<DropdownMenuItem<String>>((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
