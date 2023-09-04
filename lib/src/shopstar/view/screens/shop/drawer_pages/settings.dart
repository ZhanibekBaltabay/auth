import 'package:auth/generated/l10n.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

const _version = '1.0.0';
const _name = 'SHOPSTAr';

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text(
          S.of(context).settings,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 10,
          right: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            image: AssetImage('assets/svg/shop.jpeg')),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(S.of(context).versionVersion(_version)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                title: Text(S.of(context).editProfile),
                subtitle: Text(S.of(context).namePhone),
                leading: const Icon(
                  Icons.edit_off,
                  size: 30,
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                title: Text(S.of(context).editLanguage),
                subtitle: Text(S.of(context).language),
                leading: const Icon(
                  Icons.language,
                  size: 30,
                ),
                onTap: () {
                  const Locale('ka');
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                title: Text(S.of(context).saveAccount),
                subtitle: Text(S.of(context).accountLog),
                leading: const Icon(
                  Icons.login,
                  size: 30,
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                title: Text(S.of(context).Comments),
                subtitle: Text(S.of(context).likedShopstar(_name)),
                leading: const Icon(
                  Icons.comment,
                  size: 30,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
