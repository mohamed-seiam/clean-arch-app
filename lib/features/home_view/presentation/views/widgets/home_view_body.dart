import 'package:clean_arch_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_app_bar.dart';
import 'featured_book_list_view.dart';
import 'best_seller_books_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              Padding(
                padding:  EdgeInsets.only(left: 7.w),
                child: const FeaturedBookListView(),
              ),
              SizedBox(height:30.h ,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child:  Text(
                  'Best Seller',
                  style: Styles.style20,
                ),
              ),],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
        itemBuilder: (context,index){
          return const Padding(
            padding:  EdgeInsets.only(bottom: 30,top: 10),
            child:  BestSellerBooksListViewItem(),
          );
        },
    );
  }
}



