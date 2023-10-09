import 'package:clean_arch_app/core/utilis/api_services.dart';
import 'package:clean_arch_app/features/home/data/models/book_model.dart';
import 'package:clean_arch_app/features/home/domain/entites/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();

  Future<List<BookEntity>> fetchNewestBooks();
}


  class HomeRemoteDataSourceImplementation extends HomeRemoteDataSource {
   final ApiServices apiServices;

  HomeRemoteDataSourceImplementation({required this.apiServices});
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
  var data = await  apiServices.get(endPoint:'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntity> books = getBooksList(data);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books= [];
    for(var bookMap in data['items']) {
       books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }



  }