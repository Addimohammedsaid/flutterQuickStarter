import 'package:flutter/material.dart';
import 'package:flutterQuickStarter/component/home_component.dart';

import 'base_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeComponent>(
      builder: (context, component, child) => Scaffold(
          body: SafeArea(
        minimum: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: ListView(
          children: [Text("Home works !")],
        ),
      )),
    );
  }
}
