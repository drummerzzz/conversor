import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/body_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Conversor de moeda JF"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Observer(
          builder: (_) {
            if (controller.model.value == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } 
            if (controller.model.error != null) {
              return Center(
                child: Card(
                  child: ListView(
                    children: [
                      Text('Verifique sua conexão a internet'),
                      RaisedButton(
                        child: Text('Tentar novamente'),
                        onPressed: () {
                          controller.getCurrencies();
                        },
                      )
                    ],
                  ),
                ),
              );
            }

            return BodyWidget();
          },
        ));
  }
}
