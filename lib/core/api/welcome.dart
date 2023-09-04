import 'package:auth/generated/l10n.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  final _shop = 'SHOPSTAr';

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    const signIn = '/sign_in';
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/svg/shop.jpeg'))),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                S.of(context).thisIsNameShopstar(_shop),
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                S.of(context).Options,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 300,
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      navigator.pushNamed(signIn);
                    },
                    child: Text(
                      S.of(context).getStarted,
                      style: const TextStyle(fontSize: 15),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
