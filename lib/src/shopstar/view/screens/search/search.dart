import 'package:auth/generated/l10n.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<Map<String, dynamic>> _allUsers = [
    {"icon": 1, "name": "Samsung", "age": 2023},
    {"icon": 2, "name": "Generic", "age": 2023},
    {"icon": 4, "name": "Aser", "age": 2023},
    {"icon": 5, "name": "MacBook", "age": 2023},
    {"icon": 3, "name": "Asus", "age": 2023},
    {"icon": 6, "name": "Tab49", "age": 2022},
    {"icon": 7, "name": "Watch", "age": 2022},
    {"icon": 8, "name": "Flash Charge 2", "age": 2023},
    {"icon": 9, "name": "Samsung", "age": 2020},
    {"icon": 10, "name": "iRIS", "age": 2021},
    {"icon": 11, "name": "CORE", "age": 2019},
    {"icon": 12, "name": "intel", "age": 2023},
    {"icon": 13, "name": "GRAPHICS", "age": 2023},
    {"icon": 14, "name": "harman", "age": 2024},
    {"icon": 15, "name": "kardon", "age": 2018},
  ];
  List<Map<String, dynamic>> _foundUsers = [];

  @override
  void initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text(
          S.of(context).search,
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              style: const TextStyle(color: Colors.blue),
              decoration: InputDecoration(
                labelText: S.of(context).searchInTheMarket,
                suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundUsers[index]["icon"]),
                  color: Colors.blue,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Text(
                      _foundUsers[index]["icon"].toString(),
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      _foundUsers[index]["name"],
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                        'of ${_foundUsers[index]["age"].toString()}    . . . .       Model: Kazakhstan ',
                        style: const TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
