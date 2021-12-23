import 'package:fl_components_app/models/models.dart';
import 'package:fl_components_app/screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    MenuOption(route: 'home', name: 'Home Screen', screen : const HomeScreen(), icon: Icons.home_filled),
    MenuOption(route: 'listview1', name: 'Listview tipo 1', screen : const Listview1Screen(), icon: Icons.list_alt_outlined),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', screen : const Listview2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'alerts', name: 'Alertas - Alerts', screen : const AlertScreen(), icon: Icons.add_alert_rounded),
    MenuOption(route: 'cards', name: 'Tarjetas - Cards', screen : const CardScreen(), icon: Icons.card_membership),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for(final option in menuOptions){
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) { MaterialPageRoute(
    builder: (context) => const Listview1Screen()
    );
  }
}