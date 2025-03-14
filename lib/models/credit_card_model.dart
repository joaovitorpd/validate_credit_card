import 'package:equatable/equatable.dart';

/// A classe [CreditCardModel] representa um cartão de crédito com seu número e bandeira.
///
/// Esta classe é usada para armazenar as informações do cartão de crédito, incluindo
/// o número do cartão e a bandeira (Visa, MasterCard, etc.).
class CreditCardModel extends Equatable {
  /// O número do cartão de crédito.
  final String number;

  /// A bandeira do cartão de crédito.
  final String brand;

  /// Cria uma instância de [CreditCardModel].
  ///
  /// Os parâmetros [number] e [brand] são obrigatórios.
  ///
  /// - [number]: O número do cartão de crédito.
  /// - [brand]: A bandeira do cartão de crédito.
  const CreditCardModel({required this.number, required this.brand});

  @override
  List<Object?> get props => [number, brand];
}
