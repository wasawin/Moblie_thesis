import 'package:flutter/material.dart';

class showhighlight extends StatefulWidget {
  const showhighlight({super.key});

  @override
  State<showhighlight> createState() => _showhighlightState();
}

class _showhighlightState extends State<showhighlight> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: GridView.builder(
    //         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    //           maxCrossAxisExtent: 300,
    //           childAspectRatio: 2/2,
    //           mainAxisSpacing: 5,
    //           crossAxisSpacing: 10,
 
    //         ), 
    //         itemBuilder: ((context, index) {
    //           return Container(
    //             margin: const EdgeInsets.symmetric(vertical: 10),
    //             alignment: Alignment.center,
    //             decoration: BoxDecoration(
    //               color: Colors.lightBlue,
    //               borderRadius: BorderRadius.circular(15),
                  
    //             ),
    //           );
    //         }),
    //       ),
    //   ),
    // );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(35),
              color: Colors.grey,
            ),
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 0.8, //เลขมาก = ลดลง ความสูงของกรอบฟ้า
                  mainAxisSpacing: 10, //ช่องว่างของกรอบ บนล่าง
                  crossAxisSpacing: 5, //ช่องว่างของกรอบ ซ้ายขวา
                ),
                itemCount: 10, //แก้ไขใส่ค่าตาม length ของข้อมูล
                itemBuilder: (BuildContext context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => detailsport())); //แก้ไขเป็นแต่ละทีม พารามิเตอร์
                    },
                    child: Card(
                      elevation: 5,//เงาของกรอบ
                      color: Colors.lightBlue,
                      
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.only(top: 10),
                              height: MediaQuery.of(context).size.height * 0.18,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Image.asset('assets/images/2.jpg')),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              children: [
                                Text('วันที่', style: TextStyle(fontSize: 15)),
                                Text('คำอธิบาย', style: TextStyle(fontSize: 15)),
                              ],
                            )
                            
                          ),
                        ],
                      ),
                    ),
                  );
                }),
      ),
    );
  }
}
