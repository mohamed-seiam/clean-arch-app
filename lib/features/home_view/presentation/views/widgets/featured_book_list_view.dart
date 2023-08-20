import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'featured_list_view_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height *.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder:(context,index){
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w),
            child: const FeaturedBookItem(),
          );
        },
      ),
    );
  }
}
