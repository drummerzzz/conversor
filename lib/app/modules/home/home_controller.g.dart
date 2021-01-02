// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<double> _$currentValueComputed;

  @override
  double get currentValue =>
      (_$currentValueComputed ??= Computed<double>(() => super.currentValue,
              name: '_HomeControllerBase.currentValue'))
          .value;
  Computed<String> _$resultComputed;

  @override
  String get result =>
      (_$resultComputed ??= Computed<String>(() => super.result,
              name: '_HomeControllerBase.result'))
          .value;
  Computed<List<CurrencyModel>> _$currenciesComputed;

  @override
  List<CurrencyModel> get currencies => (_$currenciesComputed ??=
          Computed<List<CurrencyModel>>(() => super.currencies,
              name: '_HomeControllerBase.currencies'))
      .value;

  final _$modelAtom = Atom(name: '_HomeControllerBase.model');

  @override
  ObservableFuture<CurrenciesModel> get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(ObservableFuture<CurrenciesModel> value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  final _$selectedAtom = Atom(name: '_HomeControllerBase.selected');

  @override
  CurrencyModel get selected {
    _$selectedAtom.reportRead();
    return super.selected;
  }

  @override
  set selected(CurrencyModel value) {
    _$selectedAtom.reportWrite(value, super.selected, () {
      super.selected = value;
    });
  }

  final _$text1Atom = Atom(name: '_HomeControllerBase.text1');

  @override
  TextEditingController get text1 {
    _$text1Atom.reportRead();
    return super.text1;
  }

  @override
  set text1(TextEditingController value) {
    _$text1Atom.reportWrite(value, super.text1, () {
      super.text1 = value;
    });
  }

  final _$text2Atom = Atom(name: '_HomeControllerBase.text2');

  @override
  TextEditingController get text2 {
    _$text2Atom.reportRead();
    return super.text2;
  }

  @override
  set text2(TextEditingController value) {
    _$text2Atom.reportWrite(value, super.text2, () {
      super.text2 = value;
    });
  }

  final _$current1Atom = Atom(name: '_HomeControllerBase.current1');

  @override
  double get current1 {
    _$current1Atom.reportRead();
    return super.current1;
  }

  @override
  set current1(double value) {
    _$current1Atom.reportWrite(value, super.current1, () {
      super.current1 = value;
    });
  }

  final _$current2Atom = Atom(name: '_HomeControllerBase.current2');

  @override
  double get current2 {
    _$current2Atom.reportRead();
    return super.current2;
  }

  @override
  set current2(double value) {
    _$current2Atom.reportWrite(value, super.current2, () {
      super.current2 = value;
    });
  }

  final _$getCurrenciesAsyncAction =
      AsyncAction('_HomeControllerBase.getCurrencies');

  @override
  Future<dynamic> getCurrencies() {
    return _$getCurrenciesAsyncAction.run(() => super.getCurrencies());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void changeSelected(CurrencyModel currency) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeSelected');
    try {
      return super.changeSelected(currency);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCurrent1(double value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeCurrent1');
    try {
      return super.changeCurrent1(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCurrent2(double value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeCurrent2');
    try {
      return super.changeCurrent2(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
model: ${model},
selected: ${selected},
text1: ${text1},
text2: ${text2},
current1: ${current1},
current2: ${current2},
currentValue: ${currentValue},
result: ${result},
currencies: ${currencies}
    ''';
  }
}
