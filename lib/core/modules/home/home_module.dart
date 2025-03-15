import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/viewmodel/home/home_container/homer_container_viewmodel.dart';
import 'package:pokedex_app/views/home/main_container/home_main_container.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    super.binds(i);
    i.addSingleton(HomerContainerViewmodel.new);
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(
      RouteNames.homeContainer,
      child: (context) => HomeMainContainer(),
    );
  }
}
