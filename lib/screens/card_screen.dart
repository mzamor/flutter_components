import 'package:fl_components_app/widgets/widgets.dart';
import 'package:flutter/material.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card - Tarjetas'),
      ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              children: const [
                CustomCardType1(),
                SizedBox(height: 10),
                CustomCardType2()
              ],
        ),
    );
  }
}


