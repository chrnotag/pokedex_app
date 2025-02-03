import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/extensions/theme_extensions/theme_extension.dart';
import '../core/constants/colors/main_colors_light.dart';

class MainExtendedButtonBlue extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool activeState;

  const MainExtendedButtonBlue(
      {super.key,
      required this.text,
      required this.onPressed,
      this.activeState = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: activeState ? onPressed : null,
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.r))),
                backgroundColor: MainColorsLight.primaryBlue,
                disabledBackgroundColor: Colors.grey.shade300),
            child: Padding(
              padding: EdgeInsets.all(15.h),
              child: Text(
                text,
                style: context.textTheme.bodyLarge!.copyWith(
                    color:
                        activeState ? Colors.white : MainColorsLight.textHint,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
