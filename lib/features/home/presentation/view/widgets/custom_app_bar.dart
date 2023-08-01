import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 64),
      child: Row(
        children: [
          Image.asset(
            ImagePath.logo,
            width: 75,
            height: 16.1,
          ),
          const Spacer(),
          Image.asset(
            ImagePath.searchIcon,
            width: 25,
            height: 25,
          )
        ],
      ),
    );
  }
}
