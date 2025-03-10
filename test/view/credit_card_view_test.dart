import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:validate_credit_card/views/credit_card_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validate_credit_card/viewmodels/credit_card_cubit.dart';

void main() {
  testWidgets('CreditCardView should render AppBar and BlocProvider',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: CreditCardView(),
    ));

    expect(find.text('Validar Cartão'), findsOneWidget);
    expect(find.byType(BlocProvider<CreditCardCubit>), findsOneWidget);
  });
}
