import 'package:auth/src/shopstar/models/shop_buttons/column/c_column.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class BColumn extends StatelessWidget {
  final String? price;
  final String? text;
  final DecorationImage? image1;
  final DecorationImage? image2;
  final DecorationImage? image3;

  const BColumn({
    super.key,
    required this.text,
    required this.price,
    required this.image1,
    required this.image2,
    required this.image3,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.blue,
        title: const Text(
          'SHOPSTAr',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 300,
                          width: 350,
                          decoration: BoxDecoration(image: image1!),
                        ),
                        Container(
                          height: 300,
                          width: 350,
                          decoration: BoxDecoration(image: image2!),
                        ),
                        Container(
                          height: 300,
                          width: 350,
                          decoration: BoxDecoration(image: image3!),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.blue,
                  ),
                  ListTile(
                    title: Text(text!),
                    trailing: ElevatedButton(
                        onPressed: () {
                          Share.share('Yes');
                        },
                        child: const Icon(
                          Icons.share,
                          color: Colors.white,
                        )),
                    iconColor: Colors.blue,
                    textColor: Colors.black,
                  ),
                  ListTile(
                    leading: Text(price!),
                    trailing: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                        )),
                    textColor: Colors.black,
                  ),
                  const Divider(),
                  const SizedBox(
                    child: Text(
                      'Delivery',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CColumn(
                          text: 'before3h',
                        ),
                        CColumn(
                          text: 'today',
                        ),
                        CColumn(
                          text: 'tomorrow',
                        ),
                        CColumn(
                          text: 'before5d',
                        ),
                        CColumn(
                          text: 'before7d',
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      'BIG BUY',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('Delivery tomorrow free'),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'choice',
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      'ALMA',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('Delivery tomorrow free'),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'choice',
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      'Techno shop',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('Delivery tomorrow free'),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'choice',
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      'Kaz_mobile',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('Delivery tomorrow free'),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'choice',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
