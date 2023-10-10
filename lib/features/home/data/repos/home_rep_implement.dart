import 'package:clean_arch_app/core/errors/failure.dart';
import 'package:clean_arch_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:clean_arch_app/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:clean_arch_app/features/home/domain/entites/book_entity.dart';
import 'package:clean_arch_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImplementation(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var cachedBooks = homeLocalDataSource.fetchFeaturedBooks();
      if (cachedBooks.isNotEmpty) {
        return right(cachedBooks);
      }
      var booksList = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(booksList);
    } catch (error) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var cachedBooks = homeLocalDataSource.fetchNewestBooks();
      if (cachedBooks.isNotEmpty) {
        return right(cachedBooks);
      }
      var booksList = await homeRemoteDataSource.fetchNewestBooks();
      return right(booksList);
    } catch (error) {
      return left(Failure());
    }
  }
}
