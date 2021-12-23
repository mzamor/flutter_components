import 'package:fl_components_app/models/menu_option.dart';
import 'package:fl_components_app/routes/app_routes.dart';
import 'package:fl_components_app/screens/screens.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              title: Text(menuOptions[index].name),
              leading:  Icon(menuOptions[index].icon, color: Colors.indigo,),
              onTap: () {
               // final route = MaterialPageRoute(builder: (context) => const Listview1Screen(),);
                Navigator.pushNamed(context, menuOptions[index].route);
              },
            ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.getAppRoutes().length,
        )
    );
  }
}
