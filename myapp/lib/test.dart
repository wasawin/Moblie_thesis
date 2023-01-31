import 'package:flutter/material.dart';


class test extends StatefulWidget {
  const test({super.key});
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  int _count = 0;
  void _updateCount(){
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: _updateCount,
          child: Text("Add Form"),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _count,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                color: Colors.blue[100 * (index % 9)],
                child: Text("Form $index"),
              );
            },
          ),
        ),
      ],
    );
  }
}
