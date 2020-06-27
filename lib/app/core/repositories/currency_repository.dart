
import 'package:conversor/app/core/interfaces/http_client_interface.dart';
import 'package:conversor/app/core/models/currencies_model.dart';
import 'package:conversor/app/core/shared/notifications.dart';

class CurrencyRepository {
  final IHttpClient client;

  CurrencyRepository(this.client);

  Future<CurrenciesModel> getCurrencies () async {
    var data = await client.get('/all');
    showSnacBar('Cotações atualizadas.');
    return CurrenciesModel.fromJson(data);
  }
}