import 'package:clean_arch_app/features/home/domain/repos/home_repo.dart';
import 'package:clean_arch_app/features/home/domain/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entites/book_entity.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>,NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>>call([NoParam ? param]) async {

    return await homeRepo.fetchFeaturedBooks();
  }

}

