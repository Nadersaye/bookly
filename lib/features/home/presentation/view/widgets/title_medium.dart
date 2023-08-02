import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class TitleMedium extends StatelessWidget {
  const TitleMedium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Best Seller',
      style: Styles.titleMedium,
    );
  }
}
