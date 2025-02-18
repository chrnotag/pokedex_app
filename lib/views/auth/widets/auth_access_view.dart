import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/constants/images.dart';
import 'package:pokedex_app/widgets/main_extended_button_blue.dart';
import 'package:pokedex_app/widgets/presentation_view.dart';

import 'button_login_register_with.dart';

class AuthAccessView extends StatefulWidget {
  final String appBarTitle;
  final String presentationTitle;
  final String presentationDescription;
  final String presentationImage;
  final VoidCallback onPressedApple;
  final VoidCallback onPressedGoogle;
  final VoidCallback onPressedEmail;

  const AuthAccessView(
      {super.key,
      required this.appBarTitle,
      required this.presentationTitle,
      required this.presentationDescription,
      required this.presentationImage,
      required this.onPressedApple,
      required this.onPressedGoogle,
      required this.onPressedEmail});

  @override
  State<AuthAccessView> createState() => _AuthAccessViewState();
}

class _AuthAccessViewState extends State<AuthAccessView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.appBarTitle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PresentationWidget(
                title: widget.presentationTitle,
                description: widget.presentationDescription,
                image: widget.presentationImage),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonLoginRegisterWith(
                    image: Images.imagesAppleIcon,
                    text: "Continuar com a Apple",
                    onPressed: widget.onPressedApple),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  child: ButtonLoginRegisterWith(
                      image: Images.imagesGoogleIcon,
                      text: "Continuar com o Google",
                      onPressed: widget.onPressedGoogle),
                ),
                MainExtendedButtonBlue(
                    text: "Continuar com um e-mail",
                    onPressed: widget.onPressedEmail)
              ],
            )
          ],
        )),
      ),
    );
  }
}
