import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class TextstyleHelper {
  static TextStyle s15black = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle s15white = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static TextStyle s36w400black = TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
}
