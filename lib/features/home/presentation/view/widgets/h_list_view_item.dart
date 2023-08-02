import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';

class HomeHListViewItem extends StatelessWidget {
  const HomeHListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224.h,
      child: AspectRatio(
        aspectRatio: 150 / 224,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.r)),
            image: const DecorationImage(
              image: AssetImage(ImagePath.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
