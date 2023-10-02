import 'package:clean_arch_app/features/home_view/presentation/views/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilis/styles.dart';

class SimilarBooksSections extends StatelessWidget {
  const SimilarBooksSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'You can also like',
            style: Styles.style14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: SimilarBooksListView(),
        ),
      ],
    );
  }
}
