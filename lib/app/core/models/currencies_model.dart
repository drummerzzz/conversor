
import 'currency_model.dart';

class CurrenciesModel {
  List<CurrencyModel> currencies;

  CurrenciesModel({this.currencies});

  CurrenciesModel.fromJson(Map<String, dynamic> json) {
    this.currencies = [];
    json.forEach((key, value) {        
      this.currencies.add(CurrencyModel.fromJson(value));
    });
  }
}