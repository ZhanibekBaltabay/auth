import 'package:flutter/material.dart';

class AColumn extends StatelessWidget {
  final DecorationImage? image;
  final String? text;
  final String? subtext;
  final Function()? onTap;
  final String? price;

  const AColumn(
      {super.key,
      required this.subtext,
      required this.price,
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
            width: 160,
            height: 150,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: image,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Text(text!),
          const SizedBox(
            height: 3,
          ),
          Text(
            subtext!,
            style: TextStyle(color: Colors.grey[800]),
          ),
          const SizedBox(
            height: 3,
          ),
          Text('${price!}  тг',
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
