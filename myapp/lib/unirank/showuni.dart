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
      ),
      body: Container(
        color: Color.fromARGB(255, 239, 239, 239),
        child: ListView(
          children: [
            DataTable(
              columns: [
                DataColumn(
                    label: Text('อันดับ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('มหาวิทยาลัย',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ))),
                DataColumn(
                    label: Text('จำนวนเหรียญ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('มทร.ธัญบุรี')),
                  DataCell(Text('2')),
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('มทร.ล้านนา')),
                  DataCell(Text('3')),
                ]),
                DataRow(cells: [
                  DataCell(Text('3')),
                  DataCell(Text('มทร.อีสาน')),
                  DataCell(Text('4')),
                ]),
                DataRow(cells: [
                  DataCell(Text('4')),
                  DataCell(Text('มทร.พระนคร')),
                  DataCell(Text('5')),
                ]),
              ],
            ),
          ],
        ),
        
      ),
    );
  }
}
