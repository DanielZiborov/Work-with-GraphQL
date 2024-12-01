class CountryModel {
  Data? data;

  CountryModel({this.data});

  CountryModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Country? country;

  Data({this.country});

  Data.fromJson(Map<String, dynamic> json) {
    country =
        json['country'] != null ? Country.fromJson(json['country']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.country != null) {
      data['country'] = country!.toJson();
    }
    return data;
  }
}

class Country {
  String? awsRegion;
  String? capital;
  String? code;
  List<String>? currencies;
  String? currency;
  String? emoji;
  String? emojiU;
  String? name;
  String? native;
  String? phone;
  List<String>? phones;

  Country(
      {this.awsRegion,
      this.capital,
      this.code,
      this.currencies,
      this.currency,
      this.emoji,
      this.emojiU,
      this.name,
      this.native,
      this.phone,
      this.phones});

  Country.fromJson(Map<String, dynamic> json) {
    awsRegion = json['awsRegion'];
    capital = json['capital'];
    code = json['code'];
    currencies = json['currencies'].cast<String>();
    currency = json['currency'];
    emoji = json['emoji'];
    emojiU = json['emojiU'];
    name = json['name'];
    native = json['native'];
    phone = json['phone'];
    phones = json['phones'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['awsRegion'] = awsRegion;
    data['capital'] = capital;
    data['code'] = code;
    data['currencies'] = currencies;
    data['currency'] = currency;
    data['emoji'] = emoji;
    data['emojiU'] = emojiU;
    data['name'] = name;
    data['native'] = native;
    data['phone'] = phone;
    data['phones'] = phones;
    return data;
  }
}
