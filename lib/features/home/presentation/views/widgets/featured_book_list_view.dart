
import 'package:clean_arch_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entites/book_entity.dart';
import 'featured_list_view_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class FeaturedBookListView extends StatefulWidget {
  const FeaturedBookListView({Key? key, required this.books}) : super(key: key);
  final List<BookEntity> books;

  @override
  State<FeaturedBookListView> createState() => _FeaturedBookListViewState();
}

class _FeaturedBookListViewState extends State<FeaturedBookListView> {
  final ScrollController _scrollController = ScrollController();
  var nextPage = 1;
  bool isLoading = false;

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }


  void _scrollListener() {
    var currentPosition = _scrollController.position.pixels;
    var maxScrollLenght = _scrollController.position.maxScrollExtent;
    if (currentPosition >= 0.7 * maxScrollLenght) {
      if (!isLoading) {
        isLoading = false;
        BlocProvider.of<FeaturedBooksCubit>(context)
            .fetchFeaturedBooks(pageNumber: nextPage++);
        isLoading = true;
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * .3,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: FeaturedBookItem(
              image: widget.books[index].image ?? '',
            ),
          );
        },
      ),
    );
  }
}
