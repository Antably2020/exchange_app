import 'package:exchange_app/models/item.dart';
import 'package:exchange_app/statefull_widgets/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:exchange_app/stateless_widgets/bar.dart';
import 'package:exchange_app/stateless_widgets/cards.dart';

class Show_items extends StatelessWidget {
  const Show_items({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: startDrawer(),
      appBar: BaseAppBar(
        backgroundColor: Colors.blue,
        title: Text('exchange'),
        appBar: AppBar(),

      ),
      body: CardSquare(
        product: Item(0, Colors.blue, "description", "assets/car.jpg", 99, "title"),
        
      ),
      bottomNavigationBar: nav_bar_widget(),
    );
  }
}