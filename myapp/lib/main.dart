import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:myapp/sport.dart';
import 'package:myapp/test.dart';
import 'package:myapp/testtt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'RMUTT RAJAMANGALA GAMES'),
      //home: const second()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 42, 121),
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  //กรอบเขียว in design + เทา in mobile
                  //height: 400,
                  color: Color.fromARGB(255, 208, 208, 208),
                  child: Column(
                    children: [
                      //กรอบเหลือง in design + ฟ้า in mobile
                      Container(
                          color: Color.fromARGB(255, 55, 188, 255),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 50)), //ระยะห่างปุ่มกับข้อความ
                              Text(
                                'การแข่งขันที่ดำเนินการอยู่',
                                style: TextStyle(fontSize: 18),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 18)), //ระยะห่างปุ่มกับข้อความ
                              SizedBox(
                                width: 84,
                                height: 25,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => sport())); //ไว้กดหน้าที่ต้องการไป
                                  },
                                  child: Text('ดูทั้งหมด'),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange),
                                ),
                              )
                            ],
                          )),

                      //เริ่มแสดงการแข่งที่ดำเนินอยู่
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 22),
                        child: Container(
                            color: Colors.amber,
                            height: MediaQuery.of(context).size.height * 0.32,
                            width: MediaQuery.of(context).size.width * 1,
                            child: ListView.builder(
                              itemCount: 3, //แก้ตามจำนวนข้อมูลใน MySQL
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      //height: MediaQuery.of(context).size.height * 0.2,
                                      width: MediaQuery.of(context).size.width *
                                          0.55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.green[400],
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                              'ชื่อ $index', //ตัวอย่างการดึง index มาแสดง แก้ไข SQL NAME Tournamment
                                              style: TextStyle(fontSize: 15)),
                                          Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.19,
                                              child: Image.asset(
                                                  'assets/images/5.jpg')),
                                          Text('วันที่',
                                              style: TextStyle(fontSize: 15)),
                                          Text('ทีมที่เข้าร่วม',
                                              style: TextStyle(fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                );
                              },
                            )),
                      ),
                      //จบหัวข้อการแข่งขันที่ดำเนินอยู่
                    ],
                  ),
                ),
              ),

              //เริ่มแถบรายการที่เปิดรับสมัคร
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  //กรอบเขียว in design + เทา in mobile
                  //height: 400,
                  color: Color.fromARGB(255, 208, 208, 208),
                  child: Column(
                    children: [
                      //กรอบเหลือง in design + ฟ้า in mobile
                      Container(
                          color: Color.fromARGB(255, 55, 188, 255),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(padding: EdgeInsets.only(left: 50)),
                              Text(
                                'การแข่งขันที่เปิดรับสมัคร',
                                style: TextStyle(fontSize: 18),
                              ),
                              Padding(padding: EdgeInsets.only(left: 18)),
                              SizedBox(
                                width: 84,
                                height: 25,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //.ใส่หน้าตรงนี้
                                  },
                                  child: Text('ดูทั้งหมด'),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange),
                                ),
                              )
                            ],
                          )),
                      //เริ่มแสดงรายการที่เปิดรับสมัคร
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 22),
                        child: Container(
                            color: Colors.amber,
                            height: MediaQuery.of(context).size.height * 0.32,
                            width: MediaQuery.of(context).size.width * 1,
                            child: ListView.builder(
                              itemCount: 3, //แก้ตามจำนวนข้อมูลใน MySQL
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      //height: MediaQuery.of(context).size.height * 0.2,
                                      width: MediaQuery.of(context).size.width *
                                          0.55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.green[400],
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                              'ชื่อ $index', //ตัวอย่างการดึง index มาแสดง แก้ไข SQL NAME Tournamment
                                              style: TextStyle(fontSize: 15)),
                                          Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.19,
                                              child: Image.asset(
                                                  'assets/images/5.jpg')),
                                          Text('วันที่',
                                              style: TextStyle(fontSize: 15)),
                                          Text('ทีมที่เข้าร่วม',
                                              style: TextStyle(fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                );
                              },
                            )),
                      ),
                      //จบหัวข้อการแข่งขันที่เปิดรับสมัคร
                    ],
                  ),
                ),
              ),

              //เริ่มแถบยังไม่เริ่มการแข่งขัน
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  //กรอบเขียว in design + เทา in mobile
                  //height: 400,
                  color: Color.fromARGB(255, 208, 208, 208),
                  child: Column(
                    children: [
                      //กรอบเหลือง in design + ฟ้า in mobile
                      Container(
                          color: Color.fromARGB(255, 55, 188, 255),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(padding: EdgeInsets.only(left: 90)),
                              Text(
                                'ยังไม่เริ่มการแข่งขัน',
                                style: TextStyle(fontSize: 18),
                              ),
                              Padding(padding: EdgeInsets.only(left: 15)),
                              SizedBox(
                                width: 84,
                                height: 25,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('ดูทั้งหมด'),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange),
                                ),
                              )
                            ],
                          )),
                      //เริ่มแสดงรายการที่ยังไม่เริ่มการแข่งขัน
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 22),
                        child: Container(
                            color: Colors.amber,
                            height: MediaQuery.of(context).size.height * 0.32,
                            width: MediaQuery.of(context).size.width * 1,
                            child: ListView.builder(
                              itemCount: 3, //แก้ตามจำนวนข้อมูลใน MySQL
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      //height: MediaQuery.of(context).size.height * 0.2,
                                      width: MediaQuery.of(context).size.width *
                                          0.55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.green[400],
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                              'ชื่อ $index', //ตัวอย่างการดึง index มาแสดง แก้ไข SQL NAME Tournamment
                                              style: TextStyle(fontSize: 15)),
                                          Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.19,
                                              child: Image.asset(
                                                  'assets/images/5.jpg')),
                                          Text('วันที่',
                                              style: TextStyle(fontSize: 15)),
                                          Text('ทีมที่เข้าร่วม',
                                              style: TextStyle(fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                );
                              },
                            )),
                      ),
                      //จบหัวข้อยังไม่เริ่มการแข่งขัน
                    ],
                  ),
                ),
              ),

              //เริ่มแถบสิ้นสุดการแข่งขันแล้ว
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  //กรอบเขียว in design + เทา in mobile
                  //height: 400,
                  color: Color.fromARGB(255, 208, 208, 208),
                  child: Column(
                    children: [
                      //กรอบเหลือง in design + ฟ้า in mobile
                      Container(
                          color: Color.fromARGB(255, 55, 188, 255),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(padding: EdgeInsets.only(left: 80)),
                              Text(
                                'สิ้นสุดการแข่งขันแล้ว',
                                style: TextStyle(fontSize: 18),
                              ),
                              Padding(padding: EdgeInsets.only(left: 15)),
                              SizedBox(
                                width: 84,
                                height: 25,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('ดูทั้งหมด'),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange),
                                ),
                              )
                            ],
                          )),
                      //เริ่มแสดงรายการที่ยังไม่เริ่มการแข่งขัน
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 22),
                        child: Container(
                            color: Colors.amber,
                            height: MediaQuery.of(context).size.height * 0.32,
                            width: MediaQuery.of(context).size.width * 1,
                            child: ListView.builder(
                              itemCount: 3, //แก้ตามจำนวนข้อมูลใน MySQL
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      //height: MediaQuery.of(context).size.height * 0.2,
                                      width: MediaQuery.of(context).size.width *
                                          0.55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.green[400],
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                              'ชื่อ $index', //ตัวอย่างการดึง index มาแสดง แก้ไข SQL NAME Tournamment
                                              style: TextStyle(fontSize: 15)),
                                          Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.19,
                                              child: Image.asset(
                                                  'assets/images/5.jpg')),
                                          Text('วันที่',
                                              style: TextStyle(fontSize: 15)),
                                          Text('ทีมที่เข้าร่วม',
                                              style: TextStyle(fontSize: 15)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                );
                              },
                            )),
                      ),
                      //จบหัวข้อสิ้นสุดการแข่งขันแล้ว
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
