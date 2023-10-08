class ListPriceModel {
  int? amountInMicros;
  String? currencyCode;

  ListPriceModel({this.amountInMicros, this.currencyCode});

  ListPriceModel.fromJson(Map<String, dynamic> json) {
    amountInMicros = json['amountInMicros'];
    currencyCode = json['currencyCode'];
  }
}
