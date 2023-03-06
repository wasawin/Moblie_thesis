import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  @override
  Widget build(BuildContext context) {
    var widthIB = MediaQuery.of(context).size.width * 0.15;

    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 42, 121),
          title: Text(
            "รหัสยืนยันการสมัคร",
          ),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.width * 0.25,
                //color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "ส่งรหัสยืนยันการสมัครไปยังอีเมล : somethingasdf123485sfsdfsdd5@email.com", //รับตัวแปรอีเมลเข้ามาใส่
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                //color: Colors.red[400],
                height: MediaQuery.of(context).size.height * 0.45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      //color: Colors.amber[400],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: widthIB,
                                child: Expanded(
                                  child: TextFormField(
                                    onChanged: (value) {
                                      if(value.length == 1){
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                    onSaved: (pin1) {
                                      
                                    },
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.headline6,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              )
                            ],
                          ),
                          
                          Column(
                            children: [
                              Container(
                                width: widthIB,
                                child: Expanded(
                                  child: TextFormField(
                                    onChanged: (value) {
                                      if(value.length == 1){
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                    onSaved: (pin2) {
                                      
                                    },
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.headline6,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              )
                            ],
                          ),
                          
                          Column(
                            children: [
                              Container(
                                width: widthIB,
                                child: Expanded(
                                  child: TextFormField(
                                    onChanged: (value) {
                                      if(value.length == 1){
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                    onSaved: (pin3) {
                                      
                                    },
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.headline6,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              )
                            ],
                          ),
                          
                          Column(
                            children: [
                              Container(
                                width: widthIB,
                                child: Expanded(
                                  child: TextFormField(
                                    onChanged: (value) {
                                      if(value.length == 1){
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                    onSaved: (pin4) {
                                      
                                    },
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.headline6,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              
                            },
                            child: Text('ส่งอีกครั้ง',
                                    style: TextStyle(fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                          ),
                          SizedBox(width: 10,),
                          ElevatedButton(
                            onPressed: () {

                            },
                            child: Text("ยืนยัน",
                                    style: TextStyle(fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
