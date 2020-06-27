import 'package:conversor/app/core/models/currencies_model.dart';
import 'package:conversor/app/core/models/currency_model.dart';
import 'package:conversor/app/core/repositories/currency_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  
  final CurrencyRepository repository;
   _HomeControllerBase(this.repository) {
     getCurrencies();
   }
  
  @observable
  ObservableFuture<CurrenciesModel> model;

  @observable
  CurrencyModel selected;

  @computed
  double get currentValue => double.parse(selected.ask);

  @observable
  TextEditingController text1 = TextEditingController();

  @observable
  TextEditingController text2 = TextEditingController();

  @observable
  double current1 = 1.0;
  
  @observable
  double current2 = 1.0;

  @computed
  String get result {
    var r = current1 * double.parse(selected.ask);
    r = r / current2;
    return r.toStringAsFixed(2);
  }

  @computed
  List<CurrencyModel> get currencies => model.value.currencies;


  @action
  void changeSelected (CurrencyModel currency) {
    this.selected = currency;
    this.current1 = 1;
    this.current2 = currentValue;
    this.text1.text = '1';
    this.text2.text = currentValue.toStringAsFixed(2);
  }
  
  @action
  void changeCurrent1 (double value) {
    this.current1 = value;
    this.current2 = value * currentValue;
    this.text2.text = current2.toStringAsFixed(2);
  }
  @action
  void changeCurrent2 (double value) {
    this.current1 = value / currentValue;
    this.current2 = value;
    this.text1.text = current1.toStringAsFixed(2);
  }
  @action
  Future getCurrencies () async {
    model = repository.getCurrencies().asObservable();
  }

}
