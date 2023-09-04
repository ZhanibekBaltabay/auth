import 'package:auth/generated/l10n.dart';
import 'package:auth/src/shopstar/view/screens/favorites/favorites.dart';
import 'package:auth/src/shopstar/view/screens/profile/profile.dart';
import 'package:auth/src/shopstar/view/screens/search/search.dart';
import 'package:auth/src/shopstar/view/screens/shop/shop.dart';
import 'package:flutter/material.dart';

class ShopNavigator extends StatefulWidget {
  const ShopNavigator({super.key});

  @override
  State<ShopNavigator> createState() => _ShopNavigatorState();
}

class _ShopNavigatorState extends State<ShopNavigator> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const Market(),
      const Search(),
      const Favorites(),
      const Profile(),
    ];

    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[500],
        iconSize: 27,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[900],
            icon: const Icon(
              Icons.home,
            ),
            label: S.of(context).shop,
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[900],
            icon: const Icon(
              Icons.search,
            ),
            label: S.of(context).directory,
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.blue[900],
              icon: const Icon(
                Icons.favorite,
              ),
              label: S.of(context).favorites),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[900],
            icon: const Icon(
              Icons.person,
            ),
            label: S.of(context).profile,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
