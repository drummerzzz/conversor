import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../home_controller.dart';
import 'dropdown_widget.dart';
import 'field_widget.dart';

class BodyWidget extends StatelessWidget {

  var text1 = TextEditingController();
  var text2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var controller = Modular.get<HomeController>();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 30,
            ),
            DropDownWidget(),
            SizedBox(
              height: 30,
            ),
            Observer(builder: (_) {
              var isSelected = controller.selected != null;
              if (!isSelected) return Container();
              return TextField(
                controller: controller.text1,
                onChanged: (value) {
                  var newValue = double.parse(value);
                  if (newValue < 0.1) newValue = 1;
                  controller.changeCurrent1(newValue);
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: controller.selected.code,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
            ),);
            }),
            SizedBox(
              height: 30,
            ),
            Observer(builder: (_) {
              var isSelected = controller.selected != null;
              if (!isSelected) return Container();
              return TextFormField(
                controller: controller.text2,
                onChanged: (value) {
                  var newValue = double.parse(value);
                  if (newValue < 0.1) newValue = 1;
                  controller.changeCurrent2(newValue);
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'BRL',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
            ),);
            }),
          ],
        ),
      ),
    );
  }
}
