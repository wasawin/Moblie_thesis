import 'package:flutter/material.dart';



class test extends StatefulWidget {
  const test({super.key});
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
 
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 42, 121),
          title: Text("อันดับเหรียญ"),
        ),
        
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  "GFG",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("List item $index"));
          }),
    );
   
    
  }
}
