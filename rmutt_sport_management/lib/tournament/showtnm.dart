import 'package:flutter/material.dart';

class showtnm extends StatefulWidget {
  const showtnm({super.key});

  @override
  State<showtnm> createState() => _showtnmState();
}

class _showtnmState extends State<showtnm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index){
          return DataTable(
          columns: [
            DataColumn(
                label: Text('รอบที่ ${index+1}',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('ชื่อ',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold))),
            
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text(' ')),
              DataCell(Text('ชลธี - กิตติภพ')),
              //DataCell(Text('10')),
            ]),
            DataRow(cells: [
              DataCell(Text(' ')),
              DataCell(Text('จักริน - ปฏิพล')),
              //DataCell(Text('5')),
            ]),
            DataRow(cells: [
              DataCell(Text(' ')),
              DataCell(Text('เมธานันท์ - วสวิญญ์')),
              //DataCell(Text('3')),
            ]),
            DataRow(cells: [
              DataCell(Text(' ')),
              DataCell(Text('นนทพันธ์ - นพดล')),
              //DataCell(Text('2')),
            ]),
          ],
        );
  }),
      ),
    );
  }
}



// Stack(
            //   children: [
            //     Container(
            //       height: MediaQuery.of(context).size.height * 0.05,
            //       width: MediaQuery.of(context).size.width * 0.96,
            //       decoration: BoxDecoration(
            //         color: Colors.blue,
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(20),
            //           topRight: Radius.circular(20),
            //         ),
            //         border: Border(
            //           left: BorderSide(width: 2.0),
            //           right: BorderSide(width: 2.0),
            //           top: BorderSide(width: 2.0),
            //         ),
            //       ),
            //     ),
            //     Positioned(
            //       left: 35,
            //       top: 10,
            //       child: Text(
            //         'ชื่อรายการ',
            //         style: TextStyle(
            //           fontSize: 20,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
                
            //     Positioned(
            //       right: 30,
            //       top: 10,
            //       child: Text(
            //         'อันดับ',
            //         style: TextStyle(
            //           fontSize: 20,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height *
            //       0.60,
            //        // set the height to a fixed value
            //        width: MediaQuery.of(context).size.width * 0.96,
            //   child: Container(
            //     color: Colors.grey[350],
            //     child: ListView.builder(
            //       itemCount: widget.competitions.length,
            //       itemBuilder: (context, index) {
            //         return Expanded(
            //           child: Padding(
            //             padding: const EdgeInsets.only(left: 45, top: 10),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               children: [
            //                 Container(
            //                   width: MediaQuery.of(context).size.width * 0.69,
            //                   child: Text(
            //                     widget.competitions[index]['name'],
            //                     style: TextStyle(fontSize: 18),
            //                   ),
            //                 ),
            //                 Text(
            //                   widget.competitions[index]['rank'].toString(),
            //                   style: TextStyle(fontSize: 18),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // )