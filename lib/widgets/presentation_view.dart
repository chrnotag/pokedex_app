import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/extensions/theme_extensions/theme_extension.dart';

import '../core/constants/colors/main_colors_light.dart';

class PresentationWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const PresentationWidget({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 300.h),
        SizedBox(height: 20.h),
        Text(
          title,
          style: context.textTheme.displaySmall!
              .copyWith(color: MainColorsLight.textBlack),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10.h),
        Text(description,
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium!
                .copyWith(color: MainColorsLight.textBody)),
      ],
    );
  }
}