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
        title: Text("อันดับเหรียญ"),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    
    body: Container(
      color: Colors.black,
      child: ListView(
        children: [
          Text("hello",style: TextStyle(color: Colors.white),),
        ],
      ),
      ),
    
    
    );
  }
}