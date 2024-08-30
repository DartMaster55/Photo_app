import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInTextfield extends StatefulWidget {
  SignInTextfield({
    super.key,
    required this.isEmail,
  });
  final bool isEmail;

  @override
  State<SignInTextfield> createState() => _SignInTextfieldState();
}

class _SignInTextfieldState extends State<SignInTextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        width: 343.w,
        height: 52.h,
        decoration: BoxDecoration(border: Border.all(width: 3)),
        child: Form(
          child: TextFormField(
            decoration: InputDecoration(
                labelText: widget.isEmail
                    ? "     aidar@example.com"
                    : "     *********"),
            validator: (value) {
              if ((value?.length ?? 0) < 6) {
                return "Слишком коротко";
              }
              if ((value?.length ?? 0) > 30) {
                return "Cлишком длинная почта";
              }
              if (!(value?.contains("@") ?? false)) {
                return "Неверный E-mail";
              }
              if (value != "admin") {
                return "Такого ползователя нет";
              } else {
                return "dsd";
              }
            },
          ),
        ),
      ),
    );
  }
}
