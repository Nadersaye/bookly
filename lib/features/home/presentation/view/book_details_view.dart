import 'package:flutter/material.dart';

import 'widgets/book details widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BookDetailsViewBody(),
      ),
    );
  }
}