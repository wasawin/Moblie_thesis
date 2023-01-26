import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/test.dart';
import 'package:multi_image_layout/multi_image_layout.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class content1 extends StatefulWidget {
  const content1({super.key});

  @override
  State<content1> createState() => _content1State();
}

class _content1State extends State<content1> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      color: Color.fromARGB(255, 233, 231, 231),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/5.jpg',
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.95,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_month),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                              'เริ่มการแข่งขันวันที่ 8 ส.ค. - 12 ส.ค. 2565'), //แก้ไขตาม SQL ดึงข้อมูลมาแสดง
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                              'Single Eliminate'), //แก้ไขตาม SQL ดึงข้อมูลมาแสดง
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Icon(Icons.group),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                              'ทีมที่เข้าร่วม 4 ทีม / ผู้เล่น 11 คนต่อทีม'), //แก้ไขตาม SQL ดึงข้อมูลมาแสดง
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Icon(Icons.place),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text('สนามฟุตบอล'), //แก้ไขตาม SQL ดึงข้อมูลมาแสดง
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Icon(Icons.description),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Column(
                            children: [
                              Text('กติกา.pdf'),
                              Text('กติกา.pdf'), //แก้ไขตาม SQL ดึงข้อมูลมาแสดง
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'รายละเอียดการแข่ง',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ), //หัวข้อ
                          Text('รายละเอียด'), //ดึงข้อมูลจาก SQL มาแสดง
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10)),
                      SizedBox(height: 5),
                      MultiImageViewer(
                        width: MediaQuery.of(context).size.width * 0.9,
                        images: [
                          "https://picsum.photos/id/1/200/300",
                        ],
                      ),
                      SizedBox(height: 5),
                      MultiImageViewer(
                        width: MediaQuery.of(context).size.width * 0.9,
                        images: [
                          "https://picsum.photos/id/1/200/300",
                          "https://picsum.photos/id/2/200/300",
                          "https://picsum.photos/id/3/200/300",
                          "https://picsum.photos/id/4/200/300",
                          "https://picsum.photos/id/5/200/300",
                          "https://picsum.photos/id/5/200/300",
                        ],
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'รายละเอียดสนามแข่ง',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ), //หัวข้อ
                          Text('รายละเอียด'), //ดึงข้อมูลจาก SQL มาแสดง
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
              markers: Set<Marker>.of(
                <Marker>[
                  Marker(
                    markerId: MarkerId('marker_1'),
                    position: LatLng(45.521563, -122.677433),
                    infoWindow: InfoWindow(
                        title: 'Marker 1', snippet: 'This is the first marker'),
                    icon: BitmapDescriptor.defaultMarker,
                  ),
                  Marker(
                    markerId: MarkerId('marker_2'),
                    position: LatLng(45.542363, -122.637433),
                    infoWindow: InfoWindow(
                        title: 'Marker 2',
                        snippet: 'This is the second marker'),
                    icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueViolet),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
