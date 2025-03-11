import 'package:flutter_test/flutter_test.dart';
import 'package:validate_credit_card/models/credit_card_model.dart';

void main() {
  group('CreditCardModel', () {
    test('deve criar uma instância CreditCardModel com valores corretos', () {
      const number = '4111111111111111';
      const brand = 'Visa';

      final creditCard = CreditCardModel(number: number, brand: brand);

      expect(creditCard.number, equals(number));
      expect(creditCard.brand, equals(brand));
    });

    test('os adereços devem conter número e marca', () {
      const number = '4111111111111111';
      const brand = 'Visa';

      final creditCard = CreditCardModel(number: number, brand: brand);

      expect(creditCard.props, equals([number, brand]));
    });
  });
}
