import 'package:flutter/material.dart';

import '../../../../../core/utilis/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_appbar_book_details_view.dart';
import 'featured_list_view_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:30 ),
      child: Column(
        children: [
          const CustomBookDetailsAppBAr(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const FeaturedBookItem(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.style30,
          ),
          const SizedBox(
            height: 8,
          ),
          Opacity(
            opacity: .8,
            child: Text(
              'Rudyard Kipling',
              style: Styles.style18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BookAction(),
        ],
      ),
    );
  }
}
