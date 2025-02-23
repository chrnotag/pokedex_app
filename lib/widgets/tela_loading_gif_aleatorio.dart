import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/constants/colors/loading_colors.dart';
import '../core/constants/fonts.dart';
import '../core/constants/gifs.dart';

class TelaLoadingGifAleatorio extends StatefulWidget {
  const TelaLoadingGifAleatorio({
    super.key,
  });

  @override
  State<TelaLoadingGifAleatorio> createState() =>
      _TelaLoadingGifAleatorioState();
}

class _TelaLoadingGifAleatorioState extends State<TelaLoadingGifAleatorio>
    with SingleTickerProviderStateMixin {
  final Map<String, Color> _gifsCoresLoading = {
    Gifs.ashPikachu: LoadingColors.ashPikachu,
    Gifs.bubasauro: LoadingColors.bubasauro,
    Gifs.ditto: LoadingColors.ditto,
    Gifs.hexManiac: LoadingColors.hexManiac,
    Gifs.snorlax: LoadingColors.snorlax,
  };

  final List<String> _gifs = [
    Gifs.ashPikachu,
    Gifs.bubasauro,
    Gifs.ditto,
    Gifs.hexManiac,
    Gifs.snorlax,
  ];

  GifLoadingModel get gifLoading {
    final gif = _gifs[Random().nextInt(_gifs.length)];
    return GifLoadingModel(gif, _gifsCoresLoading[gif]!);
  }

  late AnimationController _controller;
  final String _text = "Carregando...";
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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GifLoadingModel gifConfig = gifLoading;
    final String imagem = gifConfig.gif;
    final Color cor = gifConfig.color;
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black.withAlpha(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 26.h),
              child: Container(
                height: 100.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagem),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(_text.length, (index) {
                    double start = (index / _letterCount);
                    double end = ((index + 1) / _letterCount);
                    double progress =
                        (_controller.value - start) / (end - start);
                    progress = progress.clamp(0.0, 1.0);

                    double scale =
                        1.0 + 0.5 * (1.0 - (progress - 0.5).abs() * 2);

                    return Transform.scale(
                      scale: scale,
                      child: Text(
                        _text[index],
                        style: TextStyle(
                          fontSize: 40.sp,
                          fontFamily: Fonts.pokemonSolid,
                          fontWeight: FontWeight.w700,
                          color: cor,
                        ),
                      ),
                    );
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GifLoadingModel {
  final String gif;
  final Color color;

  GifLoadingModel(this.gif, this.color);
}
