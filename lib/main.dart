import 'package:flutter/material.dart';
import 'views/credit_card_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Validar Cartão',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CreditCardView(),
    );
  }
}
