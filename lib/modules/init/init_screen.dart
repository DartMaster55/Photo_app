import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_app/modules/init/widgets/init_button.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 375.w,
            height: 707.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assets/images/Init.png"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(83, 307, 85, 346),
              child: SizedBox(
                child: Image.asset("lib/assets/images/init1.png"),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              const Initbutton(
                isDark: false,
                titleButton: "LOG IN",
                isLogin: true,
              ),
              SizedBox(
                width: 9.w,
              ),
              const Initbutton(
                isDark: true,
                titleButton: "REGISTER",
                isLogin: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}
