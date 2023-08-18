import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'h_list_view_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: SizedBox(
        height: 224.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const HomeHListViewItem();
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 12,
            );
          },
          itemCount: 100,
        ),
      ),
    );
  }
}
