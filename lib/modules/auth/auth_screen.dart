import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_app/core/texthelper.dart';
import 'package:photo_app/modules/auth/widgets/enter_button.dart';
import 'package:photo_app/modules/auth/widgets/sign_in_widget.dart';
import 'package:photo_app/modules/init/init_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key, required this.isRegister});

  final bool isRegister;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        toolbarHeight: 50,
        leading: InkWell(
          onTap: () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (BuildContext context) => const InitScreen()),
              (Route route) => route == null),
          child: Container(
            width: 2.w,
            height: 20.h,
            child: Image.asset(
              "lib/assets/images/back.png",
              color: Colors.black,
              fit: BoxFit.none,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 33.h,
          ),
          Text(
            widget.isRegister ? "Register" : "Log In ",
            style: TextstyleHelper.s36w400black,
          ),
          SizedBox(
            height: 32.h,
          ),
          SignInTextfield(
            isEmail: true,
          ),
          SizedBox(
            height: 16.h,
          ),
          SignInTextfield(
            isEmail: false,
          ),
          SizedBox(
            height: 16.h,
          ),
          EnterButton(
            function: () {
              _formKey.currentState!.validate();
            },
            ButtonTitle: widget.isRegister ? "REGISTER" : "LOG IN",
          ),
        ],
      ),
    );
  }
}
