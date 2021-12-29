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
                CustomCardType2(name: 'El monumental',imageUrl: 'https://media.ambito.com/p/86f02e17922432210ea19dcc4789f4d7/adjuntos/239/imagenes/039/453/0039453396/nuevo-monumental2jpg.jpg'),
                CustomCardType2(name: 'El monumental 2',imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL_gGxErUvIcrt--tJcHx3UMM1YPoh91IfPT9B4Whgbg18g6hG7YL4hXbZoXPwcXvAz-c&usqp=CAU'),
                CustomCardType2(name: 'El monumental 3',imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg3TIbIrRcV4ZHGuye6X6Oah52OuYMnMIW_w&usqp=CAU'),
              ],
        ),
    );
  }
}


