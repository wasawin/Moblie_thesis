import 'package:flutter/material.dart';

class showteam extends StatefulWidget {
  const showteam({super.key});

  @override
  State<showteam> createState() => _showteamState();
}

class _showteamState extends State<showteam> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(35),
              color: Colors.grey,
            ),
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 0.9, //เลขมาก = ลดลง
                  mainAxisSpacing: 10, //ช่องว่างของกรอบ บนล่าง
                  crossAxisSpacing: 5, //ช่องว่างของกรอบ ซ้ายขวา
                ),
                itemCount: 10, //แก้ไขใส่ค่าตาม length ของข้อมูล
                itemBuilder: (BuildContext context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => detailsport())); //แก้ไขเป็นแต่ละทีม พารามิเตอร์
                    },
                    child: Card(
                      elevation: 5,//เงาของกรอบ
                      color: Colors.amber,
                      
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.only(top: 10),
                              height: MediaQuery.of(context).size.height * 0.18,
                              child: Image.asset('assets/images/1.png')),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text('ชื่อทีม', style: TextStyle(fontSize: 15)),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
      ),
    );
  }
}
