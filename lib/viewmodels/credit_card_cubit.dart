import 'package:bloc/bloc.dart';
import '../models/credit_card_model.dart';

class CreditCardCubit extends Cubit<CreditCardModel?> {
  CreditCardCubit() : super(null);

  void validateCard(String number) {
    String brand = _getCardBrand(number);
    emit(CreditCardModel(number: number, brand: brand));
  }

  String _getCardBrand(String number) {
    number = number.replaceAll(' ', ''); // Remove espaços em branco

    if (RegExp(
            r'^(4011|4312|4389|4514|4576|5041|5066|5067|5090|6277|6362|6363|6504|6505|6506|6507|6509|6516|6550)')
        .hasMatch(number)) {
      return 'Elo';
    } else if (RegExp(r'^(5[1-5]|2[2-7])').hasMatch(number)) {
      return 'MasterCard';
    } else if (number.startsWith('4')) {
      if (number.length == 13 || number.length == 16) {
        return 'Visa';
      } else {
        return 'Número de cartão Visa inválido';
      }
    } else if (number.startsWith('34') || number.startsWith('37')) {
      return 'American Express';
    } else if (number.startsWith('6011') ||
        number.startsWith('65') ||
        RegExp(r'^(64[4-9])').hasMatch(number)) {
      return 'Discover';
    } else if (number.startsWith('6062')) {
      return 'Hipercard';
    } else if (RegExp(r'^(36|38|30[0-5])').hasMatch(number)) {
      return 'Diners Club';
    } else if (RegExp(r'^(35)').hasMatch(number)) {
      return 'JCB';
    } else if (RegExp(r'^(2014|2149)').hasMatch(number)) {
      return 'EnRoute';
    } else if (number.startsWith('8699')) {
      return 'Voyager';
    } else if (RegExp(r'^(50)').hasMatch(number)) {
      return 'Aura';
    } else {
      return 'Desconhecida';
    }
  }
}
