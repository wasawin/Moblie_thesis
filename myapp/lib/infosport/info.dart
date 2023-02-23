import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/infosport/regsingle.dart';
import 'package:myapp/infosport/regteam.dart';
import 'package:myapp/test.dart';
import 'package:multi_image_layout/multi_image_layout.dart';
import 'package:myapp/testtt.dart';

class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      color: Color.fromARGB(255, 233, 231, 231),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/5.jpg',
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.95,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => testtt(), //ไว้กดหน้าที่ต้องการไป
                                ));
                          },
                          child: Text(
                            'สมัครเข้าแข่งขัน',
                            style: TextStyle(fontSize: 20),
                          ), //แบ่งเป็นเดี่ยวหรือทีม
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Icon(Icons.calendar_month),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                              'เริ่มการแข่งขันวันที่ 8 ส.ค. - 12 ส.ค. 2565'), //แก้ไขตาม SQL ดึงข้อมูลมาแสดง
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                              'Single Eliminate'), //แก้ไขตาม SQL ดึงข้อมูลมาแสดง
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Icon(Icons.group),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                              'ทีมที่เข้าร่วม 4 ทีม / ผู้เล่น 11 คนต่อทีม'), //แก้ไขตาม SQL ดึงข้อมูลมาแสดง
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Icon(Icons.place),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text('สนามฟุตบอล'), //แก้ไขตาม SQL ดึงข้อมูลมาแสดง
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Icon(Icons.description),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Column(
                            children: [
                              Text('กติกา.pdf'),
                              Text('กติกา.pdf'), //แก้ไขตาม SQL ดึงข้อมูลมาแสดง
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'รายละเอียดการแข่ง',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ), //หัวข้อ
                          Text('รายละเอียด'), //ดึงข้อมูลจาก SQL มาแสดง
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
