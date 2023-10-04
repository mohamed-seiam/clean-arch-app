import 'package:flutter/material.dart';

import 'best_seller_books_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding:EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context,index){
        return const Padding(
          padding:  EdgeInsets.only(bottom: 30,top: 10),
          child:  BooksListViewItem(),
        );
      },
    );
  }
}
