import 'package:flutter/material.dart';
import 'package:myapp/unirank/Constants.dart';
import 'package:myapp/unirank/Universitylist.dart';

class detailuni extends StatefulWidget {
  const detailuni({super.key});
  @override
  State<detailuni> createState() => _detailuniState();
}

class _detailuniState extends State<detailuni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 42, 121),
        title: Text("อันดับเหรียญ"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.96,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    border: Border(
                      left: BorderSide(width: 2.0),
                      right: BorderSide(width: 2.0),
                      top: BorderSide(width: 2.0),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Text(
                    'อันดับ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width / 3 - 18,
                  top: 10,
                  child: Text(
                    'มหาวิทยาลัย',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Text(
                    'จำนวนเหรียญ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.80,
              width: MediaQuery.of(context).size.width * 0.96,
              child: Container(
                color: Colors.grey[350],
                child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: (BuildContext context, int index) {
                    return Universitylist(
                      coinbronze: universitys["Coin_Bronze"]![index],
                      coinsilver: universitys["Coin_Silver"]![index],
                      coingold: universitys["Coin_Gold"]![index],
                      index: index,
                      label: universitys["Name"]![index],
                      cointotal: universitys["Coin_total"]![index],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
