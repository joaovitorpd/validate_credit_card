import 'package:flutter_test/flutter_test.dart';
import 'package:validate_credit_card/models/credit_card_model.dart';

void main() {
  group('CreditCardModel', () {
    test('should create a CreditCardModel instance with correct values', () {
      const number = '4111111111111111';
      const brand = 'Visa';

      final creditCard = CreditCardModel(number: number, brand: brand);

      expect(creditCard.number, equals(number));
      expect(creditCard.brand, equals(brand));
    });

    test('props should contain number and brand', () {
      const number = '4111111111111111';
      const brand = 'Visa';

      final creditCard = CreditCardModel(number: number, brand: brand);

      expect(creditCard.props, equals([number, brand]));
    });
  });
}
