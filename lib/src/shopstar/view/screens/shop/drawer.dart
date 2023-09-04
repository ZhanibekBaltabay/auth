import 'package:auth/generated/l10n.dart';
import 'package:auth/src/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ShopDrawer extends StatefulWidget {
  const ShopDrawer({super.key});

  @override
  State<ShopDrawer> createState() => _ShopDrawerState();
}

class _ShopDrawerState extends State<ShopDrawer> {
  final user = FirebaseAuth.instance.currentUser;
  final bodyMediumTextTheme = theme.textTheme.bodyMedium;
  final welcome = '/welcome';
  final stats = '/stats';
  final share = '/share';
  final notifications = '/notifications';
  final settings = '/settings';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserAccountsDrawerHeader(
          accountName: const Text('Baltabay Zhanibek'),
          accountEmail: Text('${user?.email}'),
          currentAccountPicture: const CircleAvatar(
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/svg/pexel.jpg'),
            ),
          ),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/svg/wallpaper.jpg'),
                  fit: BoxFit.cover)),
        ),
        ListTile(
          leading: const Icon(
            Icons.line_axis,
            color: Colors.blue,
          ),
          title: Text(
            S.of(context).stats,
            style: bodyMediumTextTheme,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(stats);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.share,
            color: Colors.blue,
          ),
          title: Text(S.of(context).share, style: bodyMediumTextTheme,),
          onTap: () {
            Navigator.of(context).pushNamed(share);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.notifications,
            color: Colors.blue,
          ),
          title: Text(
            S.of(context).notifications,
            style: bodyMediumTextTheme,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(notifications);
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.settings,
            color: Colors.blue,
          ),
          title: Text(
            S.of(context).settings,
            style: bodyMediumTextTheme,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(settings);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.logout,
            color: Colors.blue,
          ),
          title: Text(
            S.of(context).signout,
            style: bodyMediumTextTheme,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(welcome);
          },
        ),
      ],
    );
  }
}
