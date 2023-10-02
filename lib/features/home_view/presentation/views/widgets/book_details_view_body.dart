import 'package:clean_arch_app/core/utilis/styles.dart';
import 'package:clean_arch_app/features/home_view/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

import 'custom_appbar_book_details_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBAr(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const FeaturedBookItem(),
          ),
          const SizedBox(height: 43,),
          const Text(
            'The Jungle Book',
            style: Styles.style30,
          ),
          const SizedBox(height: 8,),
           Opacity(
             opacity: .8,
             child: Text(
              'Rudyard Kipling',
              style: Styles.style18.copyWith(
                fontWeight:FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
          ),
           ),
        ],
      ),
    );
  }
}
