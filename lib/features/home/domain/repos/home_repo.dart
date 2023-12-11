import '../../../../core/errors/failure.dart';
import '../entites/book_entity.dart';
import 'package:dartz/dartz.dart';
abstract class HomeRepo {
  Future<Either<Failure,List<BookEntity>>> fetchFeaturedBooks({int pageNumber = 0});
  Future<Either<Failure,List<BookEntity>>> fetchNewestBooks();
}
