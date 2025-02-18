import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../core/constants/images.dart';
import '../../core/constants/navigation_routes.dart';
import '../../widgets/presentation_view.dart';

class OnboardingViewModel{

  int _currentPage = 0;

  int get currentPage => _currentPage;

  String get buttonText =>
      _currentPage < _pages.length - 1 ? "Continuar" : "Vamos começar";

  final List<Widget> _pages = [
    PresentationWidget(
      title: "Todos os Pokémons em um só Lugar",
      description:
          "Acesse uma vasta lista de Pokémon de todas as gerações já feitas pela Nintendo",
      image: Images.imagesProfessorBirchCia,
    ),
    PresentationWidget(
      title: "Mantenha sua Pokédex atualizada",
      description:
          "Cadastre-se e mantenha seu perfil, pokémon favoritos, configurações e muito mais, salvos no aplicativo, mesmo sem conexão com a internet.",
      image: Images.imagesTrainerMaia,
    ),
  ];

  List<Widget> get pages => _pages;

  void buttonNextPage(CarouselSliderController controller) {
    _nextPage(controller)
        ? null
        : Modular.to.pushNamed(NavigationRoutes.loginAndRegister);
  }

  bool _nextPage(CarouselSliderController controller) {
    if (_currentPage < _pages.length - 1) {
      _currentPage++;
      controller.nextPage(duration: Duration(milliseconds: 300));
      return true;
    }
    return false;
  }

  void onPageChanged(int index) {
    _currentPage = index;
  }
}
