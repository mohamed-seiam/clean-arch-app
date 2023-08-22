import 'package:clean_arch_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilis/assets.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({Key? key}) : super(key: key);

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
            ],
          ),
        ],
      ),
    );
  }
}
