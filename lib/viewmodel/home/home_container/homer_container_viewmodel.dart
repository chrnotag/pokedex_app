import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/icons.dart';

class HomerContainerViewmodel {
  int currentPage = 0;

  final PageController pageController = PageController();

  void changePage(int index) {
    currentPage = index;
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  List<BottomNavigationBarItem> get bottomNavigationItens => [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(currentPage == 0
                ? AssetIcons.pokeballColor
                : AssetIcons.pokeball),
            label: 'Pokédex'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(currentPage == 1
                ? AssetIcons.pokepinColor
                : AssetIcons.pokepin),
            label: 'Regiões'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
                currentPage == 2 ? AssetIcons.hearthColor : AssetIcons.hearth),
            label: 'Favoritos'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
                currentPage == 3 ? AssetIcons.personColor : AssetIcons.person),
            label: 'Perfil'),
      ];
}
