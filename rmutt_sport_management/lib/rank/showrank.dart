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
        body: Container(
          //padding: EdgeInsets.only(right: 50),
          //width: MediaQuery.of(context).size.width * 0.5,
          //ค่อยมาแก้ตอนทำ backend แล้ว
          child: ListView(
            children: <Widget>[
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
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('ชลธี')),
                  
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('นนทพัทธ์')),
                ]),
                DataRow(cells: [
                  DataCell(Text('3')),
                  DataCell(Text('จักริน')), 
                ]),
                DataRow(cells: [
                  DataCell(Text('4')),
                  DataCell(Text('วสวิญญ์')),
                ]),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
