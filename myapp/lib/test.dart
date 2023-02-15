import 'package:flutter/material.dart';
import 'package:myapp/unirank/Constants.dart';
import 'package:myapp/unirank/Universitylist.dart';



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
        
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("อันดับ",style: TextStyle(
                  fontSize: 18,
                ),),
                Text("มหาวิทยาลัย",style: TextStyle(
                  fontSize: 18,
                ),),
                Text("จำนวนเหรียญ",style: TextStyle(
                  fontSize: 18,
                ),),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 9,
              itemBuilder: (BuildContext context, int indexs) {
            return Universitylist(
              index:indexs+1,
              label: "RMUTT",
              rankscore: 5,
            );
          }

            ),
           )
         


        ],), 
      
    
      
      );
  }
}
