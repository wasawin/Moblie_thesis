import 'package:flutter/material.dart';
import 'main.dart';
import 'package:myapp/infosport/info.dart';
import 'package:myapp/tournament/showtnm.dart';
import 'package:myapp/team/showteam.dart';
import 'package:myapp/match/showmatch.dart';
import 'package:myapp/rank/showrank.dart';
import 'package:myapp/highlight/showhighlight.dart';

class detailsport extends StatefulWidget {
  const detailsport({super.key});

  @override
  State<detailsport> createState() => _detailsportState();
}

class _detailsportState extends State<detailsport> {
  late TabController tabController;
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
            showtnm(),
            showteam(),
            showmatch(),
            showrank(),
            showhighlight(),
          ],
        ),
      ),
    );
  }
}
