import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home screen widgets/custom_image_item.dart';

class SimilarBookDetailsListView extends StatelessWidget {
  const SimilarBookDetailsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        height: 112,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomImageItem(
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 10,
            );
          },
          itemCount: 100,
        ),
      ),
    );
  }
}
