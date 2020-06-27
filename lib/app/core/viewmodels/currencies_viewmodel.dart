
import 'package:conversor/app/core/models/currencies_model.dart';
import 'package:conversor/app/core/models/currency_model.dart';
import 'package:conversor/app/core/repositories/currency_repository.dart';

class CurrenciesViewModel {
  final CurrencyRepository repository;
  
  CurrenciesViewModel(this.repository);

  CurrenciesModel model;
  
  CurrencyModel selected;

  List<CurrencyModel> get currencies => model.currencies;

  double get currentValue => double.parse(selected.ask);

  double current1 = 1.0;
  
  double current2 = 1.0;

  Future<CurrenciesModel> getCurrencies() async {
    model = await repository.getCurrencies();
    return model;
  }
  
}