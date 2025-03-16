import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/constants/colors/main_colors_light.dart';
import 'package:pokedex_app/core/constants/assets/fonts.dart';
import 'package:pokedex_app/core/constants/routes/navigation_routes.dart';
import 'package:pokedex_app/core/constants/routes/route_names.dart';
import 'package:pokedex_app/core/repositories/user_repository.dart';
import 'package:pokedex_app/core/services/auth/login/login_service.dart';
import 'package:pokedex_app/core/services/local_storage/services/local_storage_manager.dart';
import 'package:pokedex_app/models/user/user_infos.dart';

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
    final dados = await LocalStorageManager<UserInfos>().read();
    if (_userLoggedStats) {
      if (dados == null) {
        final currentUser = FirebaseAuth.instance.currentUser;
        final userinfo = UserInfos(
            displayName: currentUser?.displayName,
            email: currentUser?.email,
            photoURL: currentUser?.photoURL,
            uid: currentUser?.uid);
        try {
          await LocalStorageManager<UserInfos>().save(userinfo);
        } catch (e) {
          print("erro aqui");
        }
      } else {
        Modular.get<UserRepository>().userInfos = UserInfos.fromJson(dados);
      }
      Modular.to.navigate(NavigationRoutes.loginSuccessful);
    } else {
      Modular.to.navigate(RouteNames.onboardingRoute);
    }
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
