class BookEntity {
  final String ? image;
  final String title;
  final String ? authName;
  final num ? price;
  final num ? rating;
  final String bookId;

  BookEntity(
      {required this.image,
      required this.title,
      required this.authName,
      required this.price,
      required this.rating,
      required this.bookId});
}
