import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          FadeInImage(
              image: NetworkImage('https://elintransigente.com/wp-content/uploads/2021/09/Estadio-Monumental.jpg'
              ),
            placeholder: AssetImage('assets/jar-loading.gif'
            ),
          )
        ],
      ),
    );
  }

}