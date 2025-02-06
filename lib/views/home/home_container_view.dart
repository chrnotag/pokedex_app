import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/constants/colors/main_colors_light.dart';
import 'package:pokedex_app/core/constants/images.dart';
import 'package:pokedex_app/core/extensions/theme_extensions/theme_extension.dart';

class HomeContainerView extends StatefulWidget {
  const HomeContainerView({super.key});

  @override
  State<HomeContainerView> createState() => _HomeContainerViewState();
}

class _HomeContainerViewState extends State<HomeContainerView> {
  int currentIndex = 0;

  List<String> iconesBottomBarDesativados = [
    Images.imagesPokeBallActivate,
    Images.imagesPokePinActivate,
    Images.imagesHearthActivate,
    Images.imagesPerfilActivate,
  ];

  List<String> iconesBottomBarAtivados = [
    Images.imagesPokeBallActivate,
    Images.imagesPokePinActivate,
    Images.imagesHearthActivate,
    Images.imagesPerfilActivate,
  ];

  List<String> nomePagina = ["Pokédex", "Regiões", "Favoritos", "Perfil"];

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> itens = List.generate(
      4,
      (index) => BottomNavigationBarItem(
        icon: Image.asset(iconesBottomBarDesativados[index]),
        activeIcon: Image.asset(iconesBottomBarAtivados[index]),
        label: index == currentIndex ? nomePagina[index] : "",
      ),
    );

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: itens,
        currentIndex: currentIndex,
        selectedItemColor: MainColorsLight.primaryBlue,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        selectedFontSize: 12.sp,
        showSelectedLabels: true,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Center(
          child: Column(
            children: [
              Expanded(child: Container()),
            ],
          ),
        ),
      )),
    );
  }
}
