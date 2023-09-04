import 'package:auth/core/core.dart';
import 'package:auth/src/src.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Control extends StatelessWidget {
  const Control({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   title: const Text('Auth'),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         if ((user == null)) {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => const SignInScreen()),
      //           );
      //         } else {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //                 builder: (context) => const AccountScreen()),
      //           );
      //         }
      //       },
      //       icon: Icon(
      //         Icons.person,
      //         color: (user == null) ? Colors.white : Colors.yellow,
      //       ),
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: Center(
          child: (user == null) ? const Welcome() : const ShopNavigator(),
        ),
      ),
    );
  }
}
