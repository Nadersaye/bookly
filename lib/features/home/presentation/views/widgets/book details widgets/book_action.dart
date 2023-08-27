import 'package:bookly/core/utils/colors.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 48,
            child: CustomButton(
                text: 'Free',
                textColor: AppColors.blackColor,
                backgroundColor: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16))),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 48,
            child: CustomButton(
                text: 'Free preview',
                textColor: AppColors.whiteColor,
                backgroundColor: AppColors.pinkColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
          ),
        )
      ],
    );
  }
}
