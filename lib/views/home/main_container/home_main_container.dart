import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_app/core/constants/colors/main_colors_light.dart';
import 'package:pokedex_app/viewmodel/home/home_container/homer_container_viewmodel.dart';

class HomeMainContainer extends StatefulWidget {
  const HomeMainContainer({super.key});

  @override
  State<HomeMainContainer> createState() => _HomeMainContainerState();
}

class _HomeMainContainerState extends State<HomeMainContainer> {
  @override
  Widget build(BuildContext context) {
    final HomerContainerViewmodel viewmodel =
    context.read<HomerContainerViewmodel>();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: viewmodel.pageController,
                onPageChanged: (value) =>
                    setState(() {
                      viewmodel.currentPage = value;
                    }),
                children: [
                  Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text("Pokédex"),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: Center(
                      child: Text("Regiões"),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    child: Center(
                      child: Text("Favoritos"),
                    ),
                  ),
                  Container(
                    color: Colors.yellow,
                    child: Center(
                      child: Text("Perfil"),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: viewmodel.bottomNavigationItens,
        currentIndex: viewmodel.currentPage,
        onTap: (index) {
          setState(() {
            viewmodel.currentPage = index;
            viewmodel.changePage(index);
          });
        },
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: MainColorsLight.primaryBlue,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
