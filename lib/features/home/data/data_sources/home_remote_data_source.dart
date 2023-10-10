import 'package:clean_arch_app/constant.dart';
import 'package:clean_arch_app/core/utilis/api_services.dart';
import 'package:clean_arch_app/features/home/data/models/book_model.dart';
import 'package:clean_arch_app/features/home/domain/entites/book_entity.dart';

import '../../../../core/utilis/functions/save_books.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();

  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImplementation extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImplementation({required this.apiServices});

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiServices.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntity> books = getBooksList(data);
    cachingBooksData(books,kFeaturedBox);
    return books;
  }



  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiServices.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
    List<BookEntity> newestBooks = getBooksList(data);
    return newestBooks;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
