import 'package:bookly/features/home/presentation/view/widgets/home%20screen%20widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      //shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, x) {
        return const BestSellerListViewItem();
      },
      itemCount: 10,
    );
  }
}
