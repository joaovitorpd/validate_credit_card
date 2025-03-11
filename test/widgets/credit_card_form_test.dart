import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validate_credit_card/models/credit_card_model.dart';
import 'package:validate_credit_card/viewmodels/credit_card_cubit.dart';
import 'package:validate_credit_card/widgets/credit_card_form.dart';
import 'package:bloc_test/bloc_test.dart';

class MockCreditCardCubit extends MockCubit<CreditCardModel?>
    implements CreditCardCubit {}

void main() {
  late MockCreditCardCubit mockCreditCardCubit;

  setUp(() {
    mockCreditCardCubit = MockCreditCardCubit();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider<CreditCardCubit>(
        create: (_) => mockCreditCardCubit,
        child: const Scaffold(
          body: CreditCardForm(),
        ),
      ),
    );
  }

  testWidgets('deve exibir a UI inicial', (WidgetTester tester) async {
    await tester.pumpWidget(createWidgetUnderTest());

    expect(find.text('Número do Cartão'), findsOneWidget);
    expect(find.text('Validar'), findsOneWidget);
  });

  testWidgets('deve chamar validateCard quando o botão for pressionado',
      (WidgetTester tester) async {
    await tester.pumpWidget(createWidgetUnderTest());

    final textField = find.byType(TextField);
    final button = find.byType(ElevatedButton);

    await tester.enterText(textField, '4111111111111111');
    await tester.tap(button);
    await tester.pump();

    verify(() => mockCreditCardCubit.validateCard('4111111111111111'))
        .called(1);
  });

  testWidgets('deve exibir a bandeira do cartão quando o estado for atualizado',
      (WidgetTester tester) async {
    when(() => mockCreditCardCubit.state)
        .thenReturn(CreditCardModel(number: '4111111111111111', brand: 'Visa'));

    await tester.pumpWidget(createWidgetUnderTest());
    await tester.pump();

    expect(find.text('Bandeira: Visa'), findsOneWidget);
  });

  blocTest<CreditCardCubit, CreditCardModel?>(
    'emite CreditCardModel quando validateCard é chamado',
    build: () => CreditCardCubit(),
    act: (cubit) => cubit.validateCard('4111111111111111'),
    expect: () => [CreditCardModel(number: '4111111111111111', brand: 'Visa')],
  );
}
