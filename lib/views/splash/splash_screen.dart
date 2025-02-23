import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/constants/colors/main_colors_light.dart';
import 'package:pokedex_app/core/constants/fonts.dart';
import 'package:pokedex_app/core/constants/navigation_routes.dart';
import 'package:pokedex_app/core/constants/route_names.dart';
import 'package:pokedex_app/core/services/auth/login/login_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final String _text = "Pokédex";
  int _letterCount = 0; // Número de letras em "Pokédex"
  final double _animationDurationPerLetter =
      0.5; // Duração da animação por letra em segundos
  late final bool _userLoggedStats;

  @override
  void initState() {
    super.initState();
    _letterCount = _text.length;
    _controller = AnimationController(
      duration: Duration(
          seconds: (_letterCount * _animationDurationPerLetter).toInt()),
      vsync: this,
    )..repeat(); // Repetir indefinidamente
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    _userLoggedStats = await LoginService.verifyLoggedUser();
    print(_userLoggedStats);
    _userLoggedStats
        ? Modular.to.navigate(RouteNames.onboardingRoute)
        : Modular.to.navigate(RouteNames.onboardingRoute);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColorsLight.blueBackground,
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_text.length, (index) {
                double start = (index / _letterCount);
                double end = ((index + 1) / _letterCount);
                double progress = (_controller.value - start) / (end - start);
                progress = progress.clamp(0.0, 1.0);

                double scale = 1.0 + 0.5 * (1.0 - (progress - 0.5).abs() * 2);

                return Transform.scale(
                  scale: scale,
                  child: Text(
                    _text[index],
                    style: TextStyle(
                      fontSize: 40.sp,
                      fontFamily: Fonts.pokemonSolid,
                      fontWeight: FontWeight.w700,
                      color: index <= 3 ? Colors.white : Colors.red,
                    ),
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
