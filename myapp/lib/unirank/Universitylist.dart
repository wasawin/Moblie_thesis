import 'package:flutter/material.dart';

class Universitylist extends StatefulWidget {
  const Universitylist({Key? key,required this.index,required this.label,required this.rankscore, this.fontSize = 18 }) : super(key:key);
  final int rankscore;
  final int index;
  final String label;
  final double fontSize;

  @override
  State<Universitylist> createState() => _UniversitylistState();
}

class _UniversitylistState extends State<Universitylist> {
    
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
                Text("${(widget.index)}"),
                TextButton(onPressed: () {} ,child: Text("${widget.label}")),
                Text("${widget.rankscore}"),
            ],
        ),
      ),
    );
  }}