import 'package:flutter/material.dart';

class content5 extends StatefulWidget {
  const content5({super.key});

  @override
  State<content5> createState() => _content5State();
}

class _content5State extends State<content5> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[400],
        // child: Column(
        //   children: [
        //     Table(
        //       border: TableBorder.all(),
        //       defaultColumnWidth: FlexColumnWidth(100),
        //       children: [
        //         TableRow(
        //           children: [
        //             Text('ลำดับ'),
        //             Text('ชื่อทีม'),
        //             Text('คะแนนรวม'),
        //           ]
                  
        //         )
        //       ],
        //     )
        //   ],
        // )
        child: Scaffold(
          body: ListView(children: <Widget>[
            DataTable(
              columns: [
                DataColumn(label: Text(
                    'ID',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Profession',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Stephen')),
                  DataCell(Text('Actor')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('John')),
                  DataCell(Text('Student')),
                ]),
                DataRow(cells: [
                  DataCell(Text('10')),
                  DataCell(Text('Harry')),
                  DataCell(Text('Leader')),
                ]),
                DataRow(cells: [
                  DataCell(Text('15')),
                  DataCell(Text('Peter')),
                  DataCell(Text('Scientist')),
                ]),
              ],
            ),
          ]
        ),
        )
      );
  }
}
