import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/best_seller_books_list_view_item.dart';


class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding:EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context,index){
        return const Padding(
          padding:  EdgeInsets.only(bottom: 30,top: 10),
          child: BooksListViewItem(),
        );
      },
    );
  }
}
