import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/views/home/home_container_view.dart';

class HomeModule extends Module{
  @override
  void routes(RouteManager r) {
    // TODO: implement routes
    super.routes(r);
    r.child(RouteNames.homeContainer, child: (context) => HomeContainerView(),);
  }
}