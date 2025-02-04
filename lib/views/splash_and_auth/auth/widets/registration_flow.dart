import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/extensions/theme_extensions/theme_extension.dart';
import 'package:pokedex_app/widgets/main_extended_button_blue.dart';
import 'package:pokedex_app/widgets/textfield_custom.dart';

class RegistrationFlow extends StatefulWidget {
  final String appBarTitle;
  final String pageTitle;
  final String pageSubtitle;
  final String textfieldHint;
  final bool textfieldObscureText;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onTap;
  final TextEditingController textfielController;
  final GlobalKey<FormState> formKey;
  final String textFieldWarning;
  final String textButton;
  final VoidCallback onPressedButton;
  final bool activeStatusButton;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;

  const RegistrationFlow(
      {super.key,
      required this.appBarTitle,
      required this.pageTitle,
      required this.pageSubtitle,
      required this.textfieldHint,
      this.textfieldObscureText = false,
      this.validator,
      this.onTap,
      required this.textFieldWarning,
      required this.textButton,
      required this.onPressedButton,
      required this.formKey,
      required this.textfielController,
      this.activeStatusButton = true,
      this.onChanged,
      this.keyboardType});

  @override
  State<RegistrationFlow> createState() => _RegistrationFlowState();
}

class _RegistrationFlowState extends State<RegistrationFlow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.appBarTitle)),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
          child: Center(
            child: Form(
              key: widget.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 45.5.h),
                    child: Column(
                      children: [
                        Text(
                          widget.pageTitle,
                          style: context.textTheme.displayMedium,
                        ),
                        Text(
                          widget.pageSubtitle,
                          style: context.textTheme.displaySmall,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 24.h),
                          child: TextfieldCustom(
                            hintText: widget.textfieldHint,
                            controller: widget.textfielController,
                            obscureText: widget.textfieldObscureText,
                            onTap: widget.onTap,
                            onChanged: widget.onChanged,
                            validator: widget.validator,
                            keyboardType: widget.keyboardType,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child: Text(widget.textFieldWarning, style: context.textTheme.bodySmall!.copyWith(fontSize: 12.sp),textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ),
                  MainExtendedButtonBlue(
                    text: widget.textButton,
                    onPressed: widget.onPressedButton,
                    activeState: widget.activeStatusButton,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
