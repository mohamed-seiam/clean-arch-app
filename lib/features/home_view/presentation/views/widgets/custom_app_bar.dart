import 'package:clean_arch_app/core/utilis/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w,vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 17.h,
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(FontAwesomeIcons.magnifyingGlass),
          ),
        ],
      ),
    );
  }
}
