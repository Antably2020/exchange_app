import 'package:exchange_app/statefull_widgets/changepass.dart';
import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar_widget.dart';

class changepassword extends StatelessWidget {
  const changepassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
        title: Text('Exechange App'),
        appBar: AppBar(),
    ),
      body: changepass(),
      bottomNavigationBar: nav_bar_widget(),
    );
  }
}
