import 'package:bookly/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: AppColors.starColor,
          size: 13.sp,
        ),
        SizedBox(
          width: 6.3.w,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 9.w,
        ),
        Opacity(
          opacity: .5,
          child: Text('(2390)', style: Styles.textStyle14),
        ),
      ],
    );
  }
}