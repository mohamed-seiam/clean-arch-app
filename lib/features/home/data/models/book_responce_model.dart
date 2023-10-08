import 'book_model.dart';
class BookModelResponse {
  String? kind;
  int? totalItems;
  List<BookModel>? books;

  BookModelResponse({this.kind, this.totalItems, this.books});

  BookModelResponse.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    totalItems = json['totalItems'];
    if (json['items'] != null) {
      books = <BookModel>[];
      json['items'].forEach((v) {
        books!.add(BookModel.fromJson(v));
      });
    }
  }

}













