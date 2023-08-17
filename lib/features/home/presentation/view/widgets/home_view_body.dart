import 'package:flutter/material.dart';
import 'best_seller_list_view_item copy.dart';
import 'custom_app_bar.dart';
import 'h_list_view.dart';
import 'title_medium.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              BooksListView(),
              TitleMedium(),
            ],
          ),
        ),
        SliverFillRemaining(child: BestSellerListView()),
      ],
    );
  }
}
