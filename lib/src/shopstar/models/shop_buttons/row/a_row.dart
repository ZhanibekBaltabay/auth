import 'package:flutter/material.dart';

class ARow extends StatelessWidget {
  final DecorationImage? image;
  final String? text;
  final Function()? onTap;

  const ARow(
      {super.key,
      required this.onTap,
      required this.image,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: 180,
            height: 120,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              image: image,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Text(
            text!,
            style: TextStyle(color: Colors.grey[800]),
          )
        ],
      ),
    );
  }
}
