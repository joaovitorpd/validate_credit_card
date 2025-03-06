import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../viewmodels/credit_card_cubit.dart';
import '../widgets/credit_card_form.dart';

class CreditCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Validar Cartão')),
      body: BlocProvider(
        create: (_) => CreditCardCubit(),
        child: CreditCardForm(),
      ),
    );
  }
}
