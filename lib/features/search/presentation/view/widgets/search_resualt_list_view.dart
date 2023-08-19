import 'package:flutter/material.dart';

import '../../../../home/presentation/view/widgets/home screen widgets/best_seller_list_view_item.dart';

class SearchResualtListView extends StatelessWidget {
  const SearchResualtListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, x) {
        return const BestSellerListViewItem();
      },
      itemCount: 10,
    );
  }
}
