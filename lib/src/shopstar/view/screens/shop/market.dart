import 'package:auth/generated/l10n.dart';
import 'package:auth/src/shopstar/models/shop_buttons/column/d_column.dart';
import 'package:auth/src/shopstar/models/shop_buttons/row/d_row.dart';
import 'package:auth/src/shopstar/view/screens/screens.dart';
import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          final value = await showDialog<bool>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Alert'),
                  content: const Text('doYouWantToExit'),
                  actions: [
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: const Text('no'),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text('exit'),
                    ),
                  ],
                );
              });
          if (value != null) {
            return Future.value(value);
          } else {
            return Future.value(false);
          }
        },
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                ShopDrawer(),
              ],
            ),
          ),
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            title: const Text('SHOPSTAr'),
            backgroundColor: Colors.lightBlue,
            centerTitle: true,
          ),
          body: const SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DRow(
                        image: AssetImage('assets/svg/sale.jpeg'),
                        text: '14 April - 3 September',
                      ),
                      DRow(
                        image: AssetImage('assets/svg/sale.jpeg'),
                        text: '15 April - 30 September',
                      ),
                      DRow(
                        image: AssetImage('assets/svg/sale.jpeg'),
                        text: '12 April - 9 September',
                      ),
                      DRow(
                        image: AssetImage('assets/svg/sale.jpeg'),
                        text: '14 April - 7 September',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          DColumn(
                              package1: 'assets/svg/watch.jpg',
                              package2: 'assets/svg/watch.jpg',
                              package3: 'assets/svg/watch.jpg',
                              textB: 'Apple watch SE 2nd Gen',
                              subtextB: 'smartwatch',
                              priceB: '137 392'),
                          SizedBox(
                            height: 20,
                          ),
                          DColumn(
                              package1: 'assets/svg/15_pro_max.webp',
                              package2: 'assets/svg/15_pro_max.webp',
                              package3: 'assets/svg/15_pro_max.webp',
                              textB: 'iphone15',
                              subtextB: 'phone',
                              priceB: '137 392'),
                          SizedBox(
                            height: 20,
                          ),
                          DColumn(
                              package1: 'assets/svg/15_pro_max.webp',
                              package2: 'assets/svg/15_pro_max.webp',
                              package3: 'assets/svg/15_pro_max.webp',
                              textB: 'iphone15',
                              subtextB: 'phone',
                              priceB: '137 392'),
                          SizedBox(
                            height: 20,
                          ),
                          DColumn(
                              package1: 'assets/svg/15_pro_max.webp',
                              package2: 'assets/svg/15_pro_max.webp',
                              package3: 'assets/svg/15_pro_max.webp',
                              textB: 'iphone15',
                              subtextB: 'phone',
                              priceB: '137 392'),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          DColumn(
                              package1: 'assets/svg/watch.jpg',
                              package2: 'assets/svg/watch.jpg',
                              package3: 'assets/svg/watch.jpg',
                              textB: 'Apple watch SE 2nd Gen',
                              subtextB: 'smartwatch',
                              priceB: '137 392'),
                          SizedBox(
                            height: 20,
                          ),
                          DColumn(
                              package1: 'assets/svg/15_pro_max.webp',
                              package2: 'assets/svg/15_pro_max.webp',
                              package3: 'assets/svg/15_pro_max.webp',
                              textB: 'iphone15',
                              subtextB: 'phone',
                              priceB: '137 392'),
                          SizedBox(
                            height: 20,
                          ),
                          DColumn(
                              package1: 'assets/svg/15_pro_max.webp',
                              package2: 'assets/svg/15_pro_max.webp',
                              package3: 'assets/svg/15_pro_max.webp',
                              textB: 'iphone15',
                              subtextB: 'phone',
                              priceB: '137 392'),
                          SizedBox(
                            height: 20,
                          ),
                          DColumn(
                              package1: 'assets/svg/15_pro_max.webp',
                              package2: 'assets/svg/15_pro_max.webp',
                              package3: 'assets/svg/15_pro_max.webp',
                              textB: 'iphone15',
                              subtextB: 'phone',
                              priceB: '137 392'),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
