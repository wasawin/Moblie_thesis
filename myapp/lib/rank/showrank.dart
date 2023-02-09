import 'package:flutter/material.dart';

class showrank extends StatefulWidget {
  const showrank({super.key});

  @override
  State<showrank> createState() => _showrankState();
}

class _showrankState extends State<showrank> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      child: Scaffold(
        body: ListView(children: <Widget>[
          DataTable(
            columns: [
              DataColumn(
                  label: Text('อันดับ',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('ชื่อ',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('คะแนน',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('ชลธี')),
                DataCell(Text('20')),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('นนทพัทธ์')),
                DataCell(Text('10')),
              ]),
              DataRow(cells: [
                DataCell(Text('3')),
                DataCell(Text('จักริน')),
                DataCell(Text('5')),
              ]),
              DataRow(cells: [
                DataCell(Text('4')),
                DataCell(Text('วสวิญญ์')),
                DataCell(Text('1')),
              ]),
            ],
          ),
        ]),
      ),
    );
  }
}
