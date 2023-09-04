import 'package:auth/generated/l10n.dart';
import 'package:flutter/material.dart';

class Share extends StatefulWidget {
  const Share({super.key});

  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(S.of(context).share),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(
        child: Text(
          "Share Page",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
