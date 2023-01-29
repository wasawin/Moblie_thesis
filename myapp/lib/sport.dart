import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myapp/detailsport.dart';
import 'package:myapp/test.dart';
import 'main.dart';

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class sport extends StatefulWidget {
  const sport({super.key});

  @override
  State<sport> createState() => _sportState();
}

@override
void initState() {
  var colora = Colors.grey;
}

class _sportState extends State<sport> {
  var colora = Colors.grey;
  var texts = "การแข่งขันที่ดำเนินการอยู่";
  bool headervisible = true;
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 42, 121),
        title: Visibility(visible: headervisible, child: Text("$texts")),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          SearchBarAnimation(
              searchBoxWidth: MediaQuery.of(context).size.width * 0.98,
              hintText: "ค้นหากีฬา",
              onPressButton: (isOpen) {
                setState(() {
                  if (headervisible == true) {
                    headervisible = false;
                  } else {
                    headervisible = true;
                  }
                  textController.clear();
                });
              },
              textEditingController: textController,
              isOriginalAnimation: false,
              trailingWidget: const Icon(
                Icons.search,
                size: 20,
                color: Colors.black,
              ),
              secondaryButtonWidget: const Icon(
                Icons.close,
                size: 20,
                color: Colors.black,
              ),
              buttonWidget: const Icon(
                Icons.search,
                size: 20,
                color: Colors.black,
              )),
        ],
      ),

      // body
      body: Padding(
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
                childAspectRatio: 0.73, //เลขมาก = ลดลง
                mainAxisSpacing: 5, //ช่องว่างของกรอบ บนล่าง
                crossAxisSpacing: 5, //ช่องว่างของกรอบ ซ้ายขวา
              ),
              itemCount: 10, //แก้ไขใส่ค่าตาม length ของข้อมูล
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => detailsport())); //แก้ไขเป็นแต่ละกีฬา พารามิเตอร์
                  },
                  child: Card(
                    elevation: 5,
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                              'ชื่อ $index', //ตัวอย่างการดึง index มาแสดง แก้ไข SQL NAME Tournamment
                              style: TextStyle(fontSize: 15)),
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Image.asset('assets/images/5.jpg')),
                        Text('วันที่', style: TextStyle(fontSize: 15)),
                        Text('ทีมที่เข้าร่วม', style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
