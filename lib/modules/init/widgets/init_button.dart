import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_app/core/texthelper.dart';
import 'package:photo_app/modules/auth/auth_screen.dart';

class Initbutton extends StatefulWidget {
  const Initbutton({
    super.key,
    required this.isDark,
    required this.titleButton,
    required this.isLogin,
  });

  final bool isDark;
  final bool isLogin;
  final String titleButton;

  @override
  State<Initbutton> createState() => _InitbuttonState();
}

class _InitbuttonState extends State<Initbutton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AuthScreen(
              isRegister: widget.isLogin ? false : true,
            ),
          ),
        );
      },
      child: Container(
        width: 167.w,
        height: 52.h,
        decoration: BoxDecoration(
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(10),
          color: widget.isDark ? Colors.black : Colors.white,
        ),
        child: Center(
          child: Text(
            widget.titleButton,
            style: widget.isLogin
                ? TextstyleHelper.s15black
                : TextstyleHelper.s15white,
          ),
        ),
      ),
    );
  }
}
