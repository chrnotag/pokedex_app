import 'package:flutter/material.dart';
import 'package:pokedex_app/widgets/tela_loading_gif_aleatorio.dart';

class OverlayController {
  static OverlayEntry? _overlayLoader;

  static void show(BuildContext context) {
    _overlayLoader = OverlayEntry(
      builder: (context) => Material(
        color: Colors.transparent,
        child: TelaLoadingGifAleatorio(),
      ),
    );
    Overlay.of(context).insert(_overlayLoader!);
  }

  static void hide() {
    _overlayLoader?.remove();
    _overlayLoader = null;
  }
}