import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          hintText: 'search',
          suffixIcon: Icon(
            Icons.search_outlined,
            color: AppColors.whiteColor,
          ),
          border: OutlineInputBorder()),
    );
  }
}
