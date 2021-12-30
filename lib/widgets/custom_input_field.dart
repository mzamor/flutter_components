import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final TextInputType? emailType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.emailType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => formValues[formProperty] = value,
      autofocus: true,
      keyboardType: emailType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
