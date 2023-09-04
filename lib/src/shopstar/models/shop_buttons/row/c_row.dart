import 'package:auth/src/shopstar/models/shop_buttons/column/b_column.dart';
import 'package:flutter/material.dart';

class CRow extends StatelessWidget {
  final DecorationImage? image;
  final String? name;

  // ignore: non_constant_identifier_names
  final String? sub_name;
  final String? price;

  const CRow({
    super.key,
    required this.image,
    required this.name,
    // ignore: non_constant_identifier_names
    required this.sub_name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(image: image!),
        ),
        Column(
          children: [
            Container(
              height: 75,
              width: 250,
              color: Colors.white,
              child: ListTile(
                trailing: ElevatedButton(
                  child: const Icon(Icons.favorite),
                  onPressed: () {},
                ),
                title: Text(name!),
                subtitle: Text(sub_name!),
              ),
            ),
            Container(
              height: 75,
              width: 250,
              color: Colors.white,
              child: ListTile(
                trailing: ElevatedButton(
                  child: const Text(
                    'Go',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BColumn(
                            price: '137 392',
                            text: 'Smart Watch Apple',
                            image1: DecorationImage(
                              image: AssetImage('assets/svg/watch.jpg'),
                            ),
                            image2: DecorationImage(
                              image: AssetImage('assets/svg/watch.jpg'),
                            ),
                            image3: DecorationImage(
                              image: AssetImage('assets/svg/watch.jpg'),
                            )),
                      ),
                    );
                  },
                ),
                title: Text(price!),
              ),
            ),
          ],
        )
      ],
    );
  }
}
