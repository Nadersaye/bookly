import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem({super.key, required this.borderRadius});
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 150 / 224,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          //BorderRadius.all(Radius.circular(16.r))
          borderRadius: borderRadius,
          image: const DecorationImage(
            image: AssetImage(Assets.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
