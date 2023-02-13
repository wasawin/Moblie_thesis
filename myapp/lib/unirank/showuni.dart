import 'package:flutter/material.dart';

class showuni extends StatefulWidget {
  const showuni({super.key});

  @override
  State<showuni> createState() => _showuniState();
}

class _showuniState extends State<showuni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 42, 121),
      ),
    
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.grey[400],
            child: Row(
              children: [
                Text("อันดับ"),
                Text("มหาวิทยาลัย"),
                Text("ที่ 1"),
                Text("ที่ 2"),
                Text("ที่ 3"),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text("1"),
                Text("มทร.ธัญบุรี"),
                Text("5"),
                Text("3"),
                Text("2"),

              ],
            ),
          ),

          
        ],
      ),
      ),
    );
    
  }
}