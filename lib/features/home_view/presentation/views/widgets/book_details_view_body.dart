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
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const FeaturedBookItem(),
          ),
        ],
      ),
    );
  }
}
