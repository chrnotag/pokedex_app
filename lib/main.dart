import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/app_widget.dart';
import 'package:pokedex_app/core/modules/app_module.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ScreenUtilInit(
    designSize: const Size(360, 800),
    enableScaleText: () => true,
    minTextAdapt: true,
    ensureScreenSize: true,
    builder: (context, child) =>
        ModularApp(module: AppModule(), child: AppWidget()),
  ));
}