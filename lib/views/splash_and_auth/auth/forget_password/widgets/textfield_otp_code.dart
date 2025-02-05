part of '../forget_password_code.dart';

class _TextfieldOtpCode extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  const _TextfieldOtpCode(
      {super.key,
      required this.controller,
      required this.onChanged,
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      width: 48.w,
      child: TextFormField(
        style:
            context.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.r),),
            borderSide: BorderSide(color: MainColorsLight.textDisplay, width: 1.5.r)
          )
        ),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        controller: controller,
        onChanged: onChanged,
      ),
    );
  }
}
