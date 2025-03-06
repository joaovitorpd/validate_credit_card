import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validate_credit_card/models/credit_card_model.dart';
import '../viewmodels/credit_card_cubit.dart';

class CreditCardForm extends StatefulWidget {
  @override
  _CreditCardFormState createState() => _CreditCardFormState();
}

class _CreditCardFormState extends State<CreditCardForm> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(labelText: 'Número do Cartão'),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final number = _controller.text;
              context.read<CreditCardCubit>().validateCard(number);
            },
            child: Text('Validar'),
          ),
          SizedBox(height: 20),
          BlocBuilder<CreditCardCubit, CreditCardModel?>(
            builder: (context, state) {
              if (state == null) {
                return Container();
              }
              return Text('Bandeira: ${state.brand}');
            },
          ),
        ],
      ),
    );
  }
}
