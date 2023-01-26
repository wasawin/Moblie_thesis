import 'package:flutter/material.dart';
import 'package:multi_image_layout/multi_image_layout.dart';

class content4 extends StatefulWidget {
  const content4({super.key});

  @override
  State<content4> createState() => _content4State();
}

class _content4State extends State<content4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
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
                      Padding(padding: EdgeInsets.only(bottom: 10)),
                      SizedBox(height: 5),
                      MultiImageViewer(
                        width: MediaQuery.of(context).size.width * 0.9,
                        images: [
                          "https://picsum.photos/id/1/200/300",
                        ],
                      ),
                      SizedBox(height: 5),
                      MultiImageViewer(
                        width: MediaQuery.of(context).size.width * 0.9,
                        images: [
                          "https://picsum.photos/id/1/200/300",
                          "https://picsum.photos/id/2/200/300",
                          "https://picsum.photos/id/3/200/300",
                          "https://picsum.photos/id/4/200/300",
                          "https://picsum.photos/id/5/200/300",
                          "https://picsum.photos/id/5/200/300",
                        ],
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'รายละเอียดสนามแข่ง',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ), //หัวข้อ
                          Text('รายละเอียด'), //ดึงข้อมูลจาก SQL มาแสดง
                        ],
                      ),
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
