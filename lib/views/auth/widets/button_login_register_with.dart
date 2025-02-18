import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/constants/colors/main_colors_light.dart';
import 'package:pokedex_app/core/extensions/theme_extensions/theme_extension.dart';

class ButtonLoginRegisterWith extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onPressed;

  const ButtonLoginRegisterWith(
      {super.key, required this.image, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(40.r)),
                  side: BorderSide(color: MainColorsLight.textHint, width: 2)),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,),
            child: Padding(
              padding: EdgeInsets.all(15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(image),
                  Text(
                    text,
                    style: context.textTheme.bodyLarge!.copyWith(
                        color: MainColorsLight.iconHint, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
