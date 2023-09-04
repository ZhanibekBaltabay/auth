import 'package:auth/generated/l10n.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(S.of(context).notifications),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding:  const EdgeInsets.all(7),
        child: Column(
          children:  [
             const SizedBox(height: 20),
             Container(
              decoration:  BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child:    ListTile(
                onTap: () {},
                title: const Text('SHOPSTAr'),
                subtitle: const Text('SHOPSTAr'),
                leading:  const Icon(Icons.notifications,
                size: 30,),
                trailing: const Text('5:07'),
              ),
            ),
            const SizedBox(height: 10,),
              Container(
              decoration:  BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child:    ListTile(
                onTap: () {},
                title: const Text('SHOPSTAr'),
                subtitle: const Text('SHOPSTAr'),
                leading:  const Icon(Icons.notifications,
                size: 30,),
                trailing: const Text('4:25'),
              ),
            ),
            const SizedBox(height: 10),
              Container(
              decoration:  BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child:    ListTile(
                onTap: () {},
                title: const Text('SHOPSTAr'),
                subtitle: const Text('SHOPSTAr'),
                leading:  const Icon(Icons.notifications,
                size: 30,),
                trailing: const Text('11:00'),
              ),
            ),
            const SizedBox(height: 10,),
              Container(
              decoration:  BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child:    ListTile(
                onTap: () {},
                title: const Text('SHOPSTAr'),
                subtitle: const Text('SHOPSTAr'),
                leading:  const Icon(Icons.notifications,
                size: 30,),
                trailing: const Text('7:03'),
              ),
            ),
            
          ],
        ),
      ),
    
    );
  }
}