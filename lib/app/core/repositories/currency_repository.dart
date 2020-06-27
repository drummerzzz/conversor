
import 'package:conversor/app/core/interfaces/http_client_interface.dart';
import 'package:conversor/app/core/models/currencies_model.dart';

class CurrencyRepository {
  final IHttpClient client;

  CurrencyRepository(this.client);

  Future<CurrenciesModel> getCurrencies () async {
    var data = await client.get('/all');
    return CurrenciesModel.fromJson(data);
  }
}