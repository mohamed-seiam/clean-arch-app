import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utilis/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        SizedBox(width: 6.w,),
        const Text('4.5',style: Styles.style16,),
        SizedBox(width: 5.w,),
       const Opacity(
          opacity: 0.5,
            child:  Text('(4242)',style: Styles.style14,)),
      ],
    );
  }
}
