import 'package:flutter/material.dart';
import 'dart:ffi';
import 'dart:io';

import 'package:intl/intl.dart';



class test extends StatefulWidget {
  const test({super.key});
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  int _count = 0;
  void _updateCount(){
    setState(() {
      _count++;
    });
  }

  final List<DropdownMenuItem<String>> items= [
    "ชาย",
    "หญิง",
  ].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(
        value,
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
    );
  }).toList();

  String? selectedValue;
  DateTime? _selectedDate;
  TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var widhtB = MediaQuery.of(context).size.width * 0.3;
    var widhtIB = MediaQuery.of(context).size.width * 0.6;

    return Container(
      color: Colors.grey[400], 
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: ElevatedButton(
              onPressed: _updateCount,
              child: Text("Add Form"),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _count,
              itemBuilder: (context, index) {
                return Container(
                  // height: 100,
                  // color: Colors.blue[100 * (index % 9)],
                  // child: Text("Form $index"),
                  child: Column(
                    children: [
                      Row(
                children: [
                  Container(width: widhtB, child: Text('นามสกุล')),
                  SizedBox(width: 5),
                  Container(
                    width: widhtIB,
                    child: Expanded(
                      child: TextField(
                        style: TextStyle(height: 1),
                        decoration: InputDecoration(
                            hintText: "",
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: widhtB, child: Text('เพศ')),
                  SizedBox(width: 5),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: DropdownButton(
                      value: selectedValue,
                      items: items,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      hint: Text('กรุณาเลือกเพศ'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: widhtB, child: Text('วันเกิด')),
                  SizedBox(width: 5),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextField(
                        controller: dateInput,
                        //editing controller of this TextField
                        decoration: InputDecoration(
                            icon:
                                Icon(Icons.calendar_today), //icon of text field
                            labelText: "Enter Date" //label text of field
                            ),
                        readOnly: true,
                        //set it true, so that user will not able to edit text
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2100));

                          if (pickedDate != null) {
                            print(
                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(
                                formattedDate); //formatted date output using intl package =>  2021-03-16
                            setState(() {
                              dateInput.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {}
                        },
                      )),
                ],
              ),
              Row(
                children: [
                  Container(width: widhtB, child: Text('เบอร์โทร')),
                  SizedBox(width: 5),
                  Container(
                    width: widhtIB,
                    child: Expanded(
                      child: TextField(
                        style: TextStyle(height: 1),
                        decoration: InputDecoration(
                            hintText: "", border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: widhtB, child: Text('อีเมล')),
                  SizedBox(width: 5),
                  Container(
                    width: widhtIB,
                    child: Expanded(
                      child: TextField(
                        style: TextStyle(height: 1),
                        decoration: InputDecoration(
                            hintText: "", border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: widhtB, child: Text('มหาวิทยาลัย')),
                  SizedBox(width: 5),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: DropdownButton(
                      value: selectedValue,
                      items: items,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      hint: Text('เลือกมหาวิทยาลัย'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: widhtB, child: Text('คณะ')),
                  SizedBox(width: 5),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: DropdownButton(
                      value: selectedValue,
                      items: items,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      hint: Text('เลือกคณะ'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: widhtB, child: Text('บัตรประชาชน')),
                  SizedBox(width: 5),
                  Container(
                    width: widhtIB,
                    child: Expanded(
                      child: TextField(
                        style: TextStyle(height: 1),
                        decoration: InputDecoration(
                            hintText: "", border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: widhtB, child: Text('รหัสนักศึกษา')),
                  SizedBox(width: 5),
                  Container(
                    width: widhtIB,
                    child: Expanded(
                      child: TextField(
                        style: TextStyle(height: 1),
                        decoration: InputDecoration(
                            hintText: "", border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                ],
              ),
                    ],
                  ),
                  
                );
              
              },
            ),
          ),
        ],
      ),
    );
  }
}
