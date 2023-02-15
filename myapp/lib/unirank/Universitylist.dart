import 'package:flutter/material.dart';
import 'package:myapp/unirank/UniversityScoreDetail.dart';

class Universitylist extends StatefulWidget {
  const Universitylist(
      {Key? key,
      required this.coinbronze,
      required this.coinsilver,
      required this.coingold,
      required this.index,
      required this.label,
      required this.cointotal,
      this.fontSize = 18})
      : super(key: key);
  final String cointotal;
  final String coingold;
  final String coinsilver;
  final String coinbronze;
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
        padding: const EdgeInsets.only(right: 5, left: 5, top: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 42,
            ),
            Text("${(widget.index)}"),
            SizedBox(
              width: 80,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UniversityScoreDetail(
                              coinbronze: widget.coinbronze,
                              coinsilver: widget.coinsilver,
                              coingold: widget.coingold,
                              index: widget.index,
                              label: widget.label,
                              cointotal: widget.cointotal,
                            )),
                  );
                },
                child: Text("${widget.label}")),
            SizedBox(
              width: 80,
            ),
            Text("${widget.cointotal}"),
          ],
        ),
      ),
    );
  }
}
