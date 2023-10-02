import 'package:flutter/material.dart';

import 'custom_appbar_book_details_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBAr(),
        ],
      ),
    );
  }
}
