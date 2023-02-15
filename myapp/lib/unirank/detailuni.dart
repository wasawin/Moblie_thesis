import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class detailuni extends StatefulWidget {
  const detailuni({super.key});

  @override
  State<detailuni> createState() => _detailuniState();
}

class _detailuniState extends State<detailuni> {
  @override
  Widget build(BuildContext context) {
    var widthIB = MediaQuery.of(context).size.width * 0.15;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 42, 121),
        title: Text("มทร.ธัญบุรี"), //เปลี่ยนตามหัวข้อที่กด
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.amber[400],
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Text("hello"),
                        
                      )
                    ],
                  ),
                  Column(),
                  Column(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
