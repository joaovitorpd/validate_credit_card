# Validar Cartão

Este projeto é desenvolvido por [João Vitor Pires Dias](mailto:joaovitorpd@gmail.com).

Este projeto é uma aplicação Flutter para validar cartões de crédito. Ele identifica a bandeira do cartão com base no número fornecido.

## Estrutura do Projeto

```plaintext
validate_credit_card/
├── lib/
│   ├── main.dart
│   ├── views/
│   │   └── credit_card_view.dart
│   ├── widgets/
│   │   └── credit_card_form.dart
│   ├── viewmodels/
│   │   └── credit_card_cubit.dart
│   └── models/
│       └── credit_card_model.dart
├── test/
│   ├── credit_card_view_test.dart
│   ├── credit_card_form_test.dart
│   ├── credit_card_cubit_test.dart
│   └── credit_card_model_test.dart
└── README.md
```

### Arquivos Principais

- **main.dart**: Ponto de entrada da aplicação. Configura o tema e define a tela inicial.
- **views/credit_card_view.dart**: Define a interface principal da aplicação.
- **widgets/credit_card_form.dart**: Contém o formulário para entrada do número do cartão e exibição da bandeira.
- **viewmodels/credit_card_cubit.dart**: Gerencia o estado da aplicação e valida o número do cartão.
- **models/credit_card_model.dart**: Define a classe `CreditCardModel` que representa um cartão de crédito.

## Como Executar

1. Certifique-se de ter o Flutter instalado em sua máquina.
2. Clone este repositório.
3. Navegue até o diretório do projeto.
4. Execute `flutter pub get` para instalar as dependências.
5. Execute `flutter run` para iniciar a aplicação.

## Funcionalidades

- Entrada do número do cartão de crédito.
- Validação do número do cartão.
- Identificação da bandeira do cartão (Visa, MasterCard, Elo, American Express, Discover, Hipercard, Desconhecida).

## Exemplo de Uso

1. Digite o número do cartão no campo de texto.
2. Clique no botão "Validar".
3. A bandeira do cartão será exibida abaixo do botão.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.