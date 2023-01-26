import 'package:flutter/material.dart';
import 'main.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';

class detailsport extends StatefulWidget {
  const detailsport({super.key});

  @override
  State<detailsport> createState() => _detailsportState();
}

class _detailsportState extends State<detailsport> {
  late TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),

      //body
      body: 
      Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        color: Colors.grey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: DefaultTabController(
                length: 6,
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(
                      height: 60,
                      backgroundColor: Colors.black,
                      unselectedBackgroundColor: Colors.lightBlue[400],
                      buttonMargin: EdgeInsets.all(0),
                      radius: 0,
                      tabs: [
                        Tab(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Container(
                              width: 100,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.info,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  Text(
                                    'Hello',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 7, bottom: 5),
                            child: Container(
                              width: 100,
                              child: Column(
                                children: [
                                  ImageIcon(
                                    AssetImage("assets/images/match.png"),
                                    size: 24,
                                    color: Colors.black,
                                  ),
                                  Text('match',
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Container(
                              width: 100,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.group,
                                    color: Colors.black,
                                  ),
                                  Text('ทีมที่เข้าร่วม',
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Container(
                              width: 100,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.event,
                                    color: Colors.black,
                                  ),
                                  Text('แมตช์การแข่งขัน',
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Container(
                              width: 100,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.military_tech,
                                    color: Colors.black,
                                  ),
                                  Text('อันดับ',
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Container(
                              width: 100,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.smart_display,
                                    color: Colors.black,
                                  ),
                                  Text('ไฮไลต์',
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),







    );
  }
}
