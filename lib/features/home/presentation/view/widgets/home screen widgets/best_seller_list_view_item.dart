import 'package:bookly/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';
import 'custom_image_item.dart';
import 'package:bookly/core/utils/styles.dart';
import '../../../../../../core/constants.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(31.w, 0, 51.w, 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).go(AppRoutes.bookDetailsView);
        },
        child: SizedBox(
          width: double.infinity,
          height: 105.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageItem(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
              ),
              SizedBox(
                width: 30.w,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 184.w,
                      child: Text(
                        'Harry Potter and the Goblet of Fire',
                        style: Styles.textStyle20.copyWith(
                          fontFamily: gTSectraFine,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Opacity(
                      opacity: .5,
                      child: Text(
                        'J.K. Rowling',
                        style: Styles.textStyle14,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '19.99 €',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        const Spacer(),
                        const BookRating(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
