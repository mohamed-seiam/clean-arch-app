import 'package:clean_arch_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilis/assets.dart';

class BestSellerBooksListViewItem extends StatelessWidget {
  const BestSellerBooksListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          SizedBox(width: 20.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*.5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.style30.copyWith(fontSize: 20),
                ),
              ),
              SizedBox(height: 3.h,),
           const Text('J.K. Rowling',style: Styles.style14,),
              SizedBox(height: 3.h,),
              Row(
                children: [
                  Text('19.99\$',style: Styles.style20.copyWith(fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
