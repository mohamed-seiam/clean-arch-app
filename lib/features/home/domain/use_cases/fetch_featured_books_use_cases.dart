import 'package:clean_arch_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entites/book_entity.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<Failure,List<BookEntity>>> fetchFeaturedBooks(){
    return homeRepo.fetchFeaturedBooks();
  }
}
