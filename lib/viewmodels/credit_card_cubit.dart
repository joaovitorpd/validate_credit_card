import 'package:bloc/bloc.dart';
import '../models/credit_card_model.dart';

class CreditCardCubit extends Cubit<CreditCardModel?> {
  CreditCardCubit() : super(null);

  void validateCard(String number) {
    String brand = _getCardBrand(number);
    emit(CreditCardModel(number: number, brand: brand));
  }

  String _getCardBrand(String number) {
    if (number.startsWith('4')) {
      return 'Visa';
    } else if (RegExp(r'^(5[1-5]|2[2-7])').hasMatch(number)) {
      return 'MasterCard';
    } else if (RegExp(r'^(4011|4312|4389)').hasMatch(number)) {
      return 'Elo';
    } else if (number.startsWith('34') || number.startsWith('37')) {
      return 'American Express';
    } else if (number.startsWith('6011') ||
        number.startsWith('65') ||
        RegExp(r'^(64[4-9])').hasMatch(number)) {
      return 'Discover';
    } else if (number.startsWith('6062')) {
      return 'Hipercard';
    } else {
      return 'Desconhecida';
    }
  }
}
