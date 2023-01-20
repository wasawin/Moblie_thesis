import 'package:flutter/material.dart';
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
          tabs: [
            Tab(
              text: 'สายการแข่งขัน',
              icon: Icon(Icons.star),
              
            ),
            Container(
              
              child: Tab(
                text: 'ข้อมูล',
                icon: Icon(Icons.info),
              ),
            ),
            Tab(
              text: 'ทีมที่เข้าร่วม',
              icon: Icon(Icons.group),
            ),
            Tab(
              text: 'แมตช์การแข่งขัน',
              icon: Icon(Icons.event),
            ),
            Tab(
              text: 'อันดับ',
              icon: Icon(Icons.military_tech),
              ),
            Tab(
              text: 'ไฮไลต์',
              icon: Icon(Icons.smart_display),
              ),
          ],
        ),
      ),
    body: TabBarView(
      children: [
        Center(child: Text('Tab 1 Content')),
        Center(child: Text('Tab 2 Content')),
        Center(child: Text('Tab 3 Content')),
        Center(child: Text('Tab 4 Content')),
        Center(child: Text('Tab 5 Content')),
        Center(child: Text('Tab 6 Content')),
      ],
    ),
    ),
    );
  }
}