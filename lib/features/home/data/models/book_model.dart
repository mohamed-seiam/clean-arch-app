import 'package:clean_arch_app/features/home/data/models/sales_info_model.dart';
import 'package:clean_arch_app/features/home/data/models/search_info_model.dart';
import 'package:clean_arch_app/features/home/data/models/volume_info_model.dart';
import 'package:clean_arch_app/features/home/domain/entites/book_entity.dart';

import 'access_info_model.dart';

class BookModel extends BookEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel(
      {this.kind,
      this.id,
      this.etag,
      this.selfLink,
      this.volumeInfo,
      this.saleInfo,
      this.accessInfo,
      this.searchInfo})
      : super(
            image: volumeInfo?.imageLinks?.thumbnail ?? '',
            title: volumeInfo!.title!,
            authName: volumeInfo.authors?.first ?? 'No name',
            price: 0.0,
            rating: volumeInfo.averageRating,
            bookId: id!);

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json['kind'],
      id: json['id'],
      etag: json['etag'],
      selfLink: json['selfLink'],
      volumeInfo: json['volumeInfo'] != null
          ? VolumeInfo.fromJson(json['volumeInfo'])
          : null,
      saleInfo:
          json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null,
      accessInfo: json['accessInfo'] != null
          ? AccessInfo.fromJson(json['accessInfo'])
          : null,
      searchInfo: json['searchInfo'] != null
          ? SearchInfo.fromJson(json['searchInfo'])
          : null,
    );
  }
}
