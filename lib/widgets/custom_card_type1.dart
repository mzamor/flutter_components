import 'package:fl_components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
          children:  [
        const ListTile(
          title: Text('Hola'),
          subtitle: Text(
              'Everyone loves the bitterness of shrimps kebab enameld with cored brown sugar. Cloudy adventures lead to the pestilence.The moon is more creature now than pathway. lunar and wildly solid.'),
          leading: Icon(
            Icons.picture_as_pdf_outlined,
            color: AppTheme.primary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: (){},
                  child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: (){},
                child: const Text('Ok'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
