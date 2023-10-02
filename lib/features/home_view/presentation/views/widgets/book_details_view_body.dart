import 'package:clean_arch_app/core/utilis/styles.dart';
import 'package:clean_arch_app/features/home_view/presentation/views/widgets/book_rating.dart';
import 'package:clean_arch_app/features/home_view/presentation/views/widgets/featured_list_view_item.dart';
import 'package:clean_arch_app/features/home_view/presentation/views/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';
import 'books_action.dart';
import 'custom_appbar_book_details_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: CustomBookDetailsAppBAr(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const FeaturedBookItem(),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SizedBox(
            height: 43,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'The Jungle Book',
            style: Styles.style30,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Opacity(
          opacity: .8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Rudyard Kipling',
              style: Styles.style18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        const SizedBox(
          height: 37,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BookAction(),
        ),
        const SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'You can also like',
              style: Styles.style14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: SimilarBooksListView(),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}

