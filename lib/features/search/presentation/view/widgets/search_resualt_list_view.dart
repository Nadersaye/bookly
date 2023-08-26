import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../home/presentation/views/widgets/home screen widgets/best_seller_list_view_item.dart';

class SearchResualtListView extends StatelessWidget {
  const SearchResualtListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            //physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, x) {
              return BestSellerListViewItem(
                books: state.books[x],
              );
            },
            itemCount: 10,
          );
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
