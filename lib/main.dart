import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/app_widget.dart';
import 'package:pokedex_app/core/modules/app_module.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ScreenUtilInit(
    designSize: const Size(360, 800),
    enableScaleText: () => true,
    minTextAdapt: true,
    ensureScreenSize: true,
    builder: (context, child) =>
        ModularApp(module: AppModule(), child: AppWidget()),
  ));
}
