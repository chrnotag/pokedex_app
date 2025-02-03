import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex_app/core/constants/colors/main_colors_light.dart';

class TextfieldCustom extends StatefulWidget {
  final String hintText;
  bool obscureText;
  final List<TextInputFormatter>? textInputFormatters;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;

  TextfieldCustom(
      {super.key,
      required this.hintText,
      this.obscureText = false,
      this.textInputFormatters,
      required this.controller,
      this.onTap,
      this.onChanged,
      this.validator});

  @override
  State<TextfieldCustom> createState() => _TextfieldCustomState();
}

class _TextfieldCustomState extends State<TextfieldCustom> {
  bool revealText = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    revealText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            inputFormatters: widget.textInputFormatters,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide:
                    BorderSide(color: MainColorsLight.textHint, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
              errorBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: MainColorsLight.errorRed, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
              hintText: widget.hintText,
              suffixIcon: revealText
                  ? IconButton(onPressed: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
              }, icon: Icon(widget.obscureText ? Icons.visibility : Icons.visibility_off, color: MainColorsLight.iconHint,))
                  : null,
            ),
            controller: widget.controller,
            onChanged: widget.onChanged,
            onTap: widget.onTap,
            validator: widget.validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: widget.obscureText,
          ),
        ),
      ],
    );
  }
}
