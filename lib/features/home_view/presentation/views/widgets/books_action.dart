import 'package:flutter/material.dart';

import '../../../../../core/widgets/action_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.0),
      child:  Row(
        children: [
          Expanded(
            child: CustomButton(
              backGroundColor: Colors.white,
              text: '19.99\$',
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              fontSize: 16,
              backGroundColor: Color(0xffEF8262),
              text: 'Free Preview',
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
