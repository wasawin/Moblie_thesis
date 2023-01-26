import 'package:flutter/material.dart';
import 'package:myapp/page/info.dart';
import 'package:myapp/page/content2.dart';
import 'package:myapp/page/content3.dart';
import 'package:myapp/page/content4.dart';
import 'package:myapp/page/content5.dart';
import 'package:myapp/page/content6.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 42, 121),
          title: Text(
            "การแข่งขันกีฬาฟุตบอลประจำปี 2565",
            style: TextStyle(fontSize: 18),
          ), //แก้ไขหัวข้อเปลี่ยนตามกีฬาที่กด
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Container(
                width: 80,
                child: Tab(
                  text: 'ข้อมูล',
                  icon: Icon(Icons.info),
                ),
              ),
              Tab(
                text: 'สายการแข่งขัน',
                icon: Icon(Icons.star),
              ),
              Tab(
                text: 'ทีมที่เข้าร่วม',
                icon: Icon(Icons.group),
              ),
              Tab(
                text: 'แมตช์การแข่งขัน',
                icon: Icon(Icons.event),
              ),
              Container(
                width: 80,
                child: Tab(
                  text: 'อันดับ',
                  icon: Icon(Icons.military_tech),
                ),
              ),
              Container(
                width: 80,
                child: Tab(
                  text: 'ไฮไลต์',
                  icon: Icon(Icons.smart_display),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            info(),
            content2(),
            content3(),
            content4(),
            content5(),
            content6(),
          ],
        ),
      ),
    );
  }
}
