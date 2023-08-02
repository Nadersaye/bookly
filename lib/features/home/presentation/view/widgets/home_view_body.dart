import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'h_list_view.dart';
import 'title_medium.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), BooksListView(), TitleMedium()],
    );
  }
}
