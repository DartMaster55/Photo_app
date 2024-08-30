import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_app/core/texthelper.dart';

class EnterButton extends StatelessWidget {
  const EnterButton({
    super.key,
    required this.ButtonTitle,
    required this.function,
  });

  final String ButtonTitle;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function;
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Container(
          width: 343.w,
          height: 52.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.black),
          child: Center(
            child: Text(
              ButtonTitle,
              style: TextstyleHelper.s15white,
            ),
          ),
        ),
      ),
    );
  }
}
