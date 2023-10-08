import 'list_price_model_modified.dart';

class Offers {
  int? finskyOfferType;
  ListPriceModel? listPrice;
  ListPriceModel? retailPrice;

  Offers({this.finskyOfferType, this.listPrice, this.retailPrice});

  Offers.fromJson(Map<String, dynamic> json) {
    finskyOfferType = json['finskyOfferType'];
    listPrice = json['listPrice'] != null
        ? ListPriceModel.fromJson(json['listPrice'])
        : null;
    retailPrice = json['retailPrice'] != null
        ? ListPriceModel.fromJson(json['retailPrice'])
        : null;
  }

}
