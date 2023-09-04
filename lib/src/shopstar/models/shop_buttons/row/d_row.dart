import 'package:auth/src/shopstar/models/shop_buttons/row/a_row.dart';
import 'package:auth/src/shopstar/models/shop_buttons/row/b_row.dart';
import 'package:flutter/material.dart';

class DRow extends StatelessWidget {
  final ImageProvider<Object> image;
  final String? text;

  const DRow({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return ARow(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const BRow(
                      title: 'Model',
                      subtitle: '598323',
                    )));
      },
      image: DecorationImage(image: image, fit: BoxFit.cover),
      text: text!,
    );
  }
}
