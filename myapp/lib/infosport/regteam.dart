import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';


class regteam extends StatefulWidget {
  const regteam({super.key});

  @override
  State<regteam> createState() => _regteamState();
}

class _regteamState extends State<regteam> {
  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuItem<String>> items = [
    "ชาย",
    "หญิง",
  ].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(
        value,
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
    );
  }).toList();

    return Container(
      color: Colors.black,
      child: Scaffold(
        
      ),
    );
  }
}