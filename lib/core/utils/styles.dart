import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static TextStyle titleMedium =
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600);
  static const textStyle14 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
  static const textStyle16 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  static const textStyle18 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: Assets.gTSectraFine,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: Assets.gTSectraFine,
  );
}
