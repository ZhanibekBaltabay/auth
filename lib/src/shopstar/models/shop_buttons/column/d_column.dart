import 'package:auth/src/shopstar/models/shop_buttons/column/a_column.dart';
import 'package:auth/src/shopstar/models/shop_buttons/column/b_column.dart';
import 'package:flutter/material.dart';

class DColumn extends StatelessWidget {
  final String? package1;
  final String? package2;
  final String? package3;
  final String? textB;
  final String? subtextB;
  final String? priceB;

  const DColumn({
    super.key,
    required this.package1,
    required this.package2,
    required this.package3,
    required this.textB,
    required this.subtextB,
    required this.priceB,
  });

  @override
  Widget build(BuildContext context) {
    return AColumn(
      subtext: subtextB,
      price: priceB,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BColumn(
                  price: priceB,
                  text: textB,
                  image1: DecorationImage(
                    image: AssetImage(package1!),
                  ),
                  image2: DecorationImage(
                    image: AssetImage(package2!),
                  ),
                  image3: DecorationImage(
                    image: AssetImage(package3!),
                  ))),
        );
      },
      image: DecorationImage(
          image: AssetImage(
            package1!,
          ),
          fit: BoxFit.cover),
      text: textB,
    );
  }
}
