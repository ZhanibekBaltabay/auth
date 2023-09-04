import 'package:auth/src/shopstar/models/shop_buttons/column/c_column.dart';
import 'package:auth/src/shopstar/models/shop_buttons/row/c_row.dart';
import 'package:flutter/material.dart';

class BRow extends StatelessWidget {
  final String? title;
  final String? subtitle;

  const BRow({
    super.key,
    required this.title,
    required this.subtitle,
    //  required this.package,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.blue,
        title: const Text(
          'Shop',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 70,
              color: Colors.white,
              child: ListTile(
                title: Text(title!),
                subtitle: Text(subtitle!),
                trailing: ElevatedButton(
                    child: const Icon(Icons.menu), onPressed: () {}),
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CColumn(
                    text: 'price',
                  ),
                  CColumn(
                    text: 'brand',
                  ),
                  CColumn(
                    text: 'stats',
                  ),
                  CColumn(
                    text: 'option',
                  ),
                  CColumn(
                    text: 'country',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CRow(
              image: DecorationImage(
                  image: AssetImage('assets/svg/watch.jpg'), fit: BoxFit.cover),
              name: 'Apple watch SE 2nd Gen',
              sub_name: 'data',
              price: '120331',
            ),
            const Divider(),
            const CRow(
              image: DecorationImage(
                  image: AssetImage('assets/svg/watch.jpg'), fit: BoxFit.cover),
              name: 'data',
              sub_name: 'data',
              price: '120331',
            ),
            const Divider(),
            const CRow(
              image: DecorationImage(
                  image: AssetImage('assets/svg/watch.jpg'), fit: BoxFit.cover),
              name: 'data',
              sub_name: 'data',
              price: '120331',
            ),
            const Divider(),
            const CRow(
              image: DecorationImage(
                  image: AssetImage('assets/svg/watch.jpg'), fit: BoxFit.cover),
              name: 'data',
              sub_name: 'data',
              price: '120331',
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
