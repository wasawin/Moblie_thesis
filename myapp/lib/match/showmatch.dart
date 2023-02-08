import 'package:flutter/material.dart';
import 'package:multi_image_layout/multi_image_layout.dart';

class showmatch extends StatefulWidget {
  const showmatch({super.key});

  @override
  State<showmatch> createState() => _showmatchState();
}

class _showmatchState extends State<showmatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView.builder(
      scrollDirection: Axis.vertical,
       itemCount: 20,
       itemBuilder: (BuildContext context, int index) {
        return
         GestureDetector(onTap: () {
           print("กำลังเลือก $index");
         },
         child: Container(
           height: MediaQuery.of(context).size.height * 0.15,
           width: MediaQuery.of(context).size.width * 0.94,
           color: Colors.grey[400],

           child: Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * 0.070,),
              Column(
                children: [
                  Image.asset('assets/images/liverpool.png',
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Text("Liverpool",style: TextStyle(fontSize: 18),),
                ],
              ),
    
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                    Text("4 - 6",style: TextStyle(fontSize: 22),),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                    Text("14 กุมภาพันธ์ 2566",style: TextStyle(fontSize: 14),),
                  ],
                ),
              ),
              Column(children: [
                  Image.asset('assets/images/marid.png',
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Text("Real Madrid",style: TextStyle(fontSize: 18),),
                ],),
            ],
           ),
         ),
         );
       },
     ),
      
    );
  }
}
