import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RegisterTeamScreen extends StatefulWidget {
  @override
  _RegisterTeamScreenState createState() => _RegisterTeamScreenState();
}

class _RegisterTeamScreenState extends State<RegisterTeamScreen> {
  late File _imageFile;
  final picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);
    setState(() {
      _imageFile = File(pickedFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สมัครแข่งขันทีม"),
        backgroundColor: Color.fromARGB(255, 3, 42, 121),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'ชื่อทีม',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'ชื่อ-นามสกุล(ตัวแทน)',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'เบอร์โทร(ตัวแทน)',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'อีเมล์(ตัวแทน)',
              ),
            ),
            SizedBox(height: 16),
            if (_imageFile != null) ...[
              Image.file(
                _imageFile,
                height: 100,
                width: 100,
              ),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  child: Text("แนบรูปภาพ"),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => BottomSheet(
                        onClosing: () {},
                        builder: (BuildContext context) {
                          return Container(
                            height: 100.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.camera),
                                      onPressed: () {
                                        _pickImage(ImageSource.camera);
                                        Navigator.pop(context);
                                      },
                                    ),
                                    Text("กล้องถ่ายรูป"),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.image),
                                      onPressed: () {
                                        _pickImage(ImageSource.gallery);
                                        Navigator.pop(context);
                                      },
                                    ),
                                    Text("คลังรูปภาพ"),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  child: Text("ยืนยันข้อมูล"),
                  onPressed: () {
                    // ทำอะไรก็ตามที่ต้องการ เช่น ส่งข้อมูลไปบันทึกที่
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}