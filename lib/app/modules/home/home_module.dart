import 'package:conversor/app/core/interfaces/http_client_interface.dart';
import 'package:conversor/app/core/repositories/currency_repository.dart';
import 'package:conversor/app/core/services/dio_http_service.dart';
import 'package:conversor/app/core/viewmodels/currencies_viewmodel.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get())),
        Bind((i) => CurrencyRepository(i.get())),
        Bind((i) => CurrenciesViewModel(i.get())),
        Bind<IHttpClient>((i) => HttpClienteDio()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
