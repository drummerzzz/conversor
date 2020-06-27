import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../home_controller.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Modular.get<HomeController>();
    return Container(
      child: Column(
        children: [
          Observer(
      builder: (_) {
        if (controller.model.value == null) return Container();
        return DropDownFormField(
          value: controller.selected,
          titleText: 'Selecione uma moeda',
          hintText: 'Ex: Dólar',
          textField: 'display',
          valueField: 'value',
          onChanged: (value) {
            controller.changeSelected(value);
          },
          dataSource: controller.currencies.map((e) {
            return {'display': e.name, 'value': e};
          }).toList(),
        );
      },
    ),
        ],
      )
    );
  }
}
