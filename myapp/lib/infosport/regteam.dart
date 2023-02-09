import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';


class regteam extends StatefulWidget {
  const regteam({super.key});

  @override
  State<regteam> createState() => _regteamState();
}

class _regteamState extends State<regteam> {
  @override
  Widget build(BuildContext context) {
    var widthtextfield = MediaQuery.of(context).size.width * 0.6;

    return Container(
      color: Colors.black,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 42, 121),
          title: Text(
            "สมัครแข่งขันทีม",
            style: TextStyle(fontSize: 18),
          ), //แก้ไขหัวข้อเปลี่ยนตามกีฬาที่กด
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15, top: 10),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          color: Color.fromARGB(255, 233, 231, 231),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Text('ชื่อทีม'),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: widthtextfield,
                    child: Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,bottom: 5),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text('ชื่อ-สกุล(ตัวแทน)'),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: widthtextfield,
                      child: Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Text('เบอร์โทร(ตัวแทน)'),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: widthtextfield,
                    child: Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,bottom: 5),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text('อีเมล(ตัวแทน)'),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: widthtextfield,
                      child: Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text("อัปโหลดรูปภาพทีม"),
                  
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: (){

                    }, 
                    child: Text('ยืนยัน',style: TextStyle(fontSize: 15),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green
                    ),
                    )
                ],
              )




            ],
          ),
        ),
      ),




      ),
    );
  }
}