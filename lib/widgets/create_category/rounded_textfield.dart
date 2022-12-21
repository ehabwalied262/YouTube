import 'package:flutter/material.dart';

import '../../constants.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField(
      {Key? key,
      this.icon,
      required this.hint,
      this.labalText,
      this.helperText,
      this.maxLength,
      this.validator,
      this.onChanged,
      this.maxLines = 1,
      this.controller,
      this.style,
      this.obscureText = false,
      this.hintStyle = const TextStyle(color: Palette.kGreyColor, fontSize: 14),
      this.contentPadding = const EdgeInsets.fromLTRB(12, 12, 12, 12),
      this.suffixIcon,
      this.errorText = "",
      this.readOnly = false,
      this.keyboardType,
      this.onTap,
      this.autofocus = false,
      this.color = const Color(0xff343a40),
      this.autofillHints})
      : super(key: key);

  final Widget? icon;
  final String? hint, labalText, helperText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Iterable<String>? autofillHints;
  final int? maxLength;
  final int? maxLines;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? errorText;
  final bool readOnly;
  final TextInputType? keyboardType;
  final Color color;
  final bool autofocus;
  final EdgeInsetsGeometry? contentPadding;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      child: TextFormField(
        autofocus: autofocus,
        keyboardType: keyboardType,
        style: style,
        maxLines: maxLines,
        maxLength: maxLength,
        autofillHints: autofillHints,
        cursorColor: Palette.kPrimaryColor,
        cursorHeight: 25,
        validator: validator,
        controller: controller,
        onTap: onTap,
        onChanged: onChanged,
        obscureText: obscureText,
        readOnly: readOnly,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          fillColor: color.withOpacity(0.6),
          filled: true,
          helperText: helperText,
          contentPadding: contentPadding,
          errorText: errorText,
          labelText: labalText,
          isDense: true,
          hintStyle: hintStyle,
          icon: icon,
          hintText: hint,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
