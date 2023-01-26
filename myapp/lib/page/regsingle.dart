import 'dart:ffi';
import 'dart:io';

import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:myapp/test.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:intl/intl.dart';
import 'package:file_picker/file_picker.dart';

class regsingle extends StatefulWidget {
  const regsingle({super.key});

  @override
  State<regsingle> createState() => _regsingleState();
}

class _regsingleState extends State<regsingle> {
  final List<DropdownMenuItem<String>> items = [
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
  String _fileName = "";
  late File _file;
  
  @override
  Widget build(BuildContext context) {
    var widhtB = MediaQuery.of(context).size.width * 0.25;
    var widhtIB = MediaQuery.of(context).size.width * 0.6;

    return Container(
      color: Colors.black,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 42, 121),
          title: Text(
            "สมัครแข่งขันเดี่ยว",
            style: TextStyle(fontSize: 18),
          ), //แก้ไขหัวข้อเปลี่ยนตามกีฬาที่กด
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15, top: 10),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          color: Color.fromARGB(255, 233, 231, 231),
          child: Column(
            children: [
              Row(
                children: [
                  Container(width: widhtB, child: Text('ชื่อ')),
                  SizedBox(width: 20),
                  Container(
                    width: widhtIB,
                    child: Expanded(
                      child: TextField(
                        style: TextStyle(height: 1),
                        decoration: InputDecoration(
                            hintText: "Enter your name",
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: widhtB, child: Text('นามสกุล')),
                  SizedBox(width: 20),
                  Container(
                    width: widhtIB,
                    child: Expanded(
                      child: TextField(
                        style: TextStyle(height: 1),
                        decoration: InputDecoration(
                            hintText: "Enter your name",
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: widhtB, child: Text('เพศ')),
                  SizedBox(width: 20),
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
                  SizedBox(width: 20),
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
                  SizedBox(width: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
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
                  SizedBox(width: 20),
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
                  SizedBox(width: 20),
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
                      hint: Text(''),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: widhtB, child: Text('คณะ')),
                  SizedBox(width: 20),
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
                      hint: Text(''),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: widhtB, child: Text('บัตรประชาชน')),
                  SizedBox(width: 20),
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
                  SizedBox(width: 20),
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
                children: <Widget>[
                  Text("Select a file"),
                  ElevatedButton(
                    child: Text("Pick a file"),
                    onPressed: () async {
                      final file = await FilePicker.getFile();
                      setState(() {
                        _file = file;
                      });
                    },
                  ),
                  _file != null ? Text(_file.path) : Container(),
                ],
              ),







            ],
          ),
        ),
      ),
    );
  }
}
