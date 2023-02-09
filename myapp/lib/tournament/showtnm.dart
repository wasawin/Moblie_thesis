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
      body: ListView(children: <Widget>[
        DataTable(
          columns: [
            DataColumn(
                label: Text('คู่',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('ชื่อ',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold))),
            // DataColumn(
            //     label: Text('คะแนนรวม',
            //         style: TextStyle(
            //             fontSize: 18, fontWeight: FontWeight.bold))),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('ชลธี - กิตติภพ')),
              //DataCell(Text('10')),
            ]),
            DataRow(cells: [
              DataCell(Text('2')),
              DataCell(Text('จักริน - ปฏิพล')),
              //DataCell(Text('5')),
            ]),
            DataRow(cells: [
              DataCell(Text('3')),
              DataCell(Text('เมธานันท์ - วสวิญญ์')),
              //DataCell(Text('3')),
            ]),
            DataRow(cells: [
              DataCell(Text('4')),
              DataCell(Text('นนทพันธ์ - นพดล')),
              //DataCell(Text('2')),
            ]),
          ],
        ),
      ]),
      ),
    );
  }
}
