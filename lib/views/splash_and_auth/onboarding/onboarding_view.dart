import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/constants/colors/main_colors_light.dart';
import 'package:pokedex_app/core/constants/images.dart';
import 'package:pokedex_app/core/constants/navigation_routes.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/core/extensions/theme_extensions/theme_extension.dart';
import 'package:pokedex_app/widgets/main_extended_button_blue.dart';
import 'package:pokedex_app/widgets/presentation_view.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;

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

  CarouselSliderController controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            children: [
              Expanded(
                child: CarouselSlider(
                  items: _pages,
                  carouselController: controller,
                  options: CarouselOptions(
                    height: double.infinity,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(_pages.length, (index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 5.w),
                      width: _currentPage == index ? 25.w : 8.w,
                      height: 8.w,
                      decoration: BoxDecoration(
                        color: _currentPage == index
                            ? MainColorsLight.primaryBlue
                            : Color(0x804565b7),
                        borderRadius: BorderRadius.circular(5.w),
                      ),
                    );
                  }),
                ),
              ),

              // Botão de Avançar
              MainExtendedButtonBlue(text: _currentPage < _pages.length - 1
                  ? "Continuar"
                  : "Vamos começar", onPressed: () {
                if (_currentPage < _pages.length - 1) {
                  setState(() {
                    _currentPage++;
                    controller.nextPage(duration: Duration(milliseconds: 300));
                  });
                } else {
                  print(RouteNames.loginAndRegister);
                  Modular.to.pushNamed(NavigationRoutes.loginAndRegister);
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
