import 'package:flutter/material.dart';

class UniversityScoreDetail extends StatefulWidget {
  const UniversityScoreDetail({Key? key,required this.coinbronze,required this.coinsilver,required this.coingold,required this.index,required this.label,required this.cointotal, this.fontSize = 18 }): super(key:key);
  final String cointotal;
  final String coingold;
  final String coinsilver;
  final String coinbronze;
  final int index;
  final String label;
  final double fontSize;

  @override
  State<UniversityScoreDetail> createState() => _UniversityScoreDetailState();
}

class _UniversityScoreDetailState extends State<UniversityScoreDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 42, 121),
        title: Text(widget.label),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.92,
          height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.black),
      ),
      child: Row(
        children: [
          Container(
            child: Image.asset("assets/images/medal.png"),
          )
        ],
      ),
    ),
        Container(),
        Container(),
      ],),
    );
  }
}