import 'package:auth/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/svg/pexel.jpg'),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                title: Text(S.of(context).name),
                subtitle: const Text('Zhanibek'),
                leading: const Icon(
                  CupertinoIcons.person,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                title: Text(S.of(context).phone),
                subtitle: const Text('87777777777'),
                leading: const Icon(
                  CupertinoIcons.phone,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                title: Text(S.of(context).email),
                subtitle: Text('${user?.email}'),
                leading: const Icon(
                  CupertinoIcons.mail,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
