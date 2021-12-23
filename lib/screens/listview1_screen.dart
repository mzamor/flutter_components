import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  final options = const [
    'super mario bross',
    'Double dragon',
    'Mortal kombat',
    'Street fighter'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lisview tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map((game) => ListTile(
                  title: Text(game),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_sharp,
                  )))
              .toList()
        ],
      ),
    );
  }
}

/*
class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: Text('Hello World'),
          ),
    );
  }
}*/
