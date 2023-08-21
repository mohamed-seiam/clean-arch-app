import 'package:clean_arch_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_app_bar.dart';
import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        Padding(
          padding:  EdgeInsets.only(left: 18.w),
          child: const FeaturedBookListView(),
        ),
        SizedBox(height:40.h ,),
        Padding(
          padding: EdgeInsets.only(left:30.w),
          child: const Text(
            'Best Seller',
            style: Styles.style20,
          ),
        ),
      ],
    );
  }
}
