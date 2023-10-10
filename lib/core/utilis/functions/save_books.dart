import 'package:hive/hive.dart';

import '../../../features/home/domain/entites/book_entity.dart';

void cachingBooksData(List<BookEntity> books,String boxName) {
  var box = Hive.box<BookEntity>(boxName);
  box.addAll(books);
}