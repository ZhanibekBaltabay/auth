import 'package:flutter/material.dart';

class CColumn extends StatelessWidget {
  final String? text;

  const CColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10),
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[200]),
      child: Center(
          child: Text(
        text!,
        style: const TextStyle(color: Colors.blue),
      )),
    );
  }
}
