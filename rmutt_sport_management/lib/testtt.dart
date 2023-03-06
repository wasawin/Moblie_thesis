import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:myapp/infosport/otp.dart';

class testtt extends StatefulWidget {
  @override
  _testttState createState() => _testttState();
}

class _testttState extends State<testtt> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _teamName = "";
  late String _representativeName = "";
  late String _phoneNumber = "";
  late String _email = "";
  late String _imagePath = "";
  late String _fileName = "";
  var fileaname;
  String textfilenamea = "";

  Future<void> _openFilePicker() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);
    if (result != null) {
      setState(() {
        _imagePath = result.files.single.path!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สมัครแข่งขันทีม"),
        backgroundColor: Color.fromARGB(255, 3, 42, 121),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "ชื่อทีม",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'โปรดกรอกชื่อทีม';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _teamName = value!;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "ชื่อ-นามสกุล (ตัวแทน)",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'โปรดกรอกชื่อ-นามสกุล (ตัวแทน)';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _representativeName = value!;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "เบอร์โทร (ตัวแทน)",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'โปรดกรอกเบอร์โทร (ตัวแทน)';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _phoneNumber = value!;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "อีเมล์ (ตัวแทน)",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'โปรดกรอกอีเมล์ (ตัวแทน)';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
//                 SizedBox(height: 16.0),
                Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text("แนบรูปทีม",style: TextStyle(fontSize: 15),),
                      Row(
                        children: [
                          Text(textfilenamea),
                          IconButton(
                              onPressed: () async {
                                FilePickerResult? result =
                                    await FilePicker.platform.pickFiles();
                                if (result != null) {
                                  PlatformFile filea = result.files.first;

                                  print(filea.name);
                                  print(filea.bytes);
                                  print(filea.size);
                                  print(filea.extension);
                                  print(filea.path);

                                  setState(() {
                                    fileaname = filea.name;
                                    print(fileaname);
                                    textfilenamea = filea.name;
                                  });
                                } else {
                                  
                                }
                              },
                              icon: Icon(Icons.add)),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 140),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => otp(), //ไว้กดหน้าที่ต้องการไป
                              )
                            );
                          print(fileaname);
                        },
                        child: Text(
                          'ยืนยัน',
                          style: TextStyle(fontSize: 15),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                            
                      ),
                    ],
                  ),
                ),
//                 ElevatedButton(
//                   child: Text('แนบรูป'),
//                   onPressed: _openFilePicker,
//                 ),
//                 SizedBox(height: 16.0),
//                 _imagePath != null
//                     ? Image.file(
//                         File(_imagePath),
//                         height: 45,
//                         width: 45,
//                       )
//                     : SizedBox.shrink(),
//                 SizedBox(height: 16.0),
//                 ElevatedButton(
//                   child: Text('สมัคร'),
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       _formKey.currentState!.save();
// // ส่งข้อมูลไปยังเซิร์ฟเวอร์
//                     }
//                   },
//                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
