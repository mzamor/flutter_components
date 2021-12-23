import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

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
        title: const Text('Lisview tipo 2'),
      ),
      body: ListView.separated(
          itemBuilder: (_, __) => const Divider(),
          separatorBuilder: (context, index) => ListTile(
              title: Text(options[index]),
              trailing: const Icon(
                Icons.arrow_forward_ios_sharp,
              )),
          itemCount: options.length),
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
