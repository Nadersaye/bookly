import 'package:bookly/core/utils/colors.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../data/models/book_model/book_model.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.books});
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
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
                onPressed: () async {
                  final Uri url = Uri.parse(books.volumeInfo.previewLink!);
                  if (!await launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  )) {
                    throw Exception('Could not launch $url');
                  }
                },
                text: 'Free preview',
                textColor: AppColors.whiteColor,
                backgroundColor: AppColors.pinkColor,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
          ),
        )
      ],
    );
  }
}
