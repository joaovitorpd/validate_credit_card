import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
//import 'package:mocktail/mocktail.dart';
import 'package:validate_credit_card/models/credit_card_model.dart';
import 'package:validate_credit_card/viewmodels/credit_card_cubit.dart';

class MockCreditCardCubit extends MockCubit<CreditCardModel?>
    implements CreditCardCubit {}

void main() {
  group('CreditCardCubit', () {
    late CreditCardCubit creditCardCubit;

    setUp(() {
      creditCardCubit = CreditCardCubit();
    });

    tearDown(() {
      creditCardCubit.close();
    });

    blocTest<CreditCardCubit, CreditCardModel?>(
      'emite CreditCardModel com a bandeira Visa quando o número do cartão começa com 4',
      build: () => creditCardCubit,
      act: (cubit) => cubit.validateCard('4111111111111111'),
      expect: () =>
          [CreditCardModel(number: '4111111111111111', brand: 'Visa')],
    );

    blocTest<CreditCardCubit, CreditCardModel?>(
      'emite CreditCardModel com a bandeira MasterCard quando o número do cartão começa com 51-55 ou 22-27',
      build: () => creditCardCubit,
      act: (cubit) => cubit.validateCard('5111111111111111'),
      expect: () =>
          [CreditCardModel(number: '5111111111111111', brand: 'MasterCard')],
    );

    blocTest<CreditCardCubit, CreditCardModel?>(
      'emite CreditCardModel com a bandeira Elo quando o número do cartão corresponde ao padrão Elo',
      build: () => creditCardCubit,
      act: (cubit) => cubit.validateCard('4011111111111111'),
      expect: () => [CreditCardModel(number: '4011111111111111', brand: 'Elo')],
    );

    blocTest<CreditCardCubit, CreditCardModel?>(
      'emite CreditCardModel com a bandeira American Express quando o número do cartão começa com 34 ou 37',
      build: () => creditCardCubit,
      act: (cubit) => cubit.validateCard('341111111111111'),
      expect: () => [
        CreditCardModel(number: '341111111111111', brand: 'American Express')
      ],
    );

    blocTest<CreditCardCubit, CreditCardModel?>(
      'emite CreditCardModel com a bandeira Discover quando o número do cartão corresponde ao padrão Discover',
      build: () => creditCardCubit,
      act: (cubit) => cubit.validateCard('6011111111111111'),
      expect: () =>
          [CreditCardModel(number: '6011111111111111', brand: 'Discover')],
    );

    blocTest<CreditCardCubit, CreditCardModel?>(
      'emite CreditCardModel com a bandeira Hipercard quando o número do cartão começa com 6062',
      build: () => creditCardCubit,
      act: (cubit) => cubit.validateCard('6062111111111111'),
      expect: () =>
          [CreditCardModel(number: '6062111111111111', brand: 'Hipercard')],
    );

    blocTest<CreditCardCubit, CreditCardModel?>(
      'emite CreditCardModel com a bandeira Diners Club quando o número do cartão corresponde ao padrão Diners Club',
      build: () => creditCardCubit,
      act: (cubit) => cubit.validateCard('36111111111111'),
      expect: () =>
          [CreditCardModel(number: '36111111111111', brand: 'Diners Club')],
    );

    blocTest<CreditCardCubit, CreditCardModel?>(
      'emite CreditCardModel com a bandeira JCB quando o número do cartão começa com 35',
      build: () => creditCardCubit,
      act: (cubit) => cubit.validateCard('3511111111111111'),
      expect: () => [CreditCardModel(number: '3511111111111111', brand: 'JCB')],
    );

    blocTest<CreditCardCubit, CreditCardModel?>(
      'emite CreditCardModel com a bandeira EnRoute quando o número do cartão corresponde ao padrão EnRoute',
      build: () => creditCardCubit,
      act: (cubit) => cubit.validateCard('201411111111111'),
      expect: () =>
          [CreditCardModel(number: '201411111111111', brand: 'EnRoute')],
    );

    blocTest<CreditCardCubit, CreditCardModel?>(
      'emite CreditCardModel com a bandeira Voyager quando o número do cartão começa com 8699',
      build: () => creditCardCubit,
      act: (cubit) => cubit.validateCard('869911111111111'),
      expect: () =>
          [CreditCardModel(number: '869911111111111', brand: 'Voyager')],
    );

    blocTest<CreditCardCubit, CreditCardModel?>(
      'emite CreditCardModel com a bandeira Aura quando o número do cartão começa com 50',
      build: () => creditCardCubit,
      act: (cubit) => cubit.validateCard('5011111111111111'),
      expect: () =>
          [CreditCardModel(number: '5011111111111111', brand: 'Aura')],
    );

    blocTest<CreditCardCubit, CreditCardModel?>(
      'emite CreditCardModel com a bandeira Desconhecida quando o número do cartão não corresponde a nenhum padrão',
      build: () => creditCardCubit,
      act: (cubit) => cubit.validateCard('1234567890123456'),
      expect: () =>
          [CreditCardModel(number: '1234567890123456', brand: 'Desconhecida')],
    );
  });
}
