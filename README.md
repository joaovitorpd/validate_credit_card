# Validate Credit Card

Developed by [João Vitor Pires Dias](mailto:joaovitorpd@gmail.com).

This project is a Flutter app created as a challenge in the **Bootcamp Microsoft AI for Tech - GitHub Copilot**. This app validates credit cards and identifies their brand.

## Project Structure

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
│   ├── models/
│   │   └── credit_card_model_test.dart
│   ├── view/
│   │   └── credit_card_view_test.dart
│   ├── viewmodels/
│   │   └── credit_card_cubit_test.dart
│   └── widgets/
│       └── credit_card_form_test.dart
└── README.md
```

### Main Files

- **main.dart**: Application entry point. Configures the theme and defines the initial screen.
- **views/credit_card_view.dart**: Defines the main interface of the application.
- **widgets/credit_card_form.dart**: Contains the form for entering the card number and displaying the brand.
- **viewmodels/credit_card_cubit.dart**: Manages the application state and validates the card number.
- **models/credit_card_model.dart**: Defines the `CreditCardModel` class that represents a credit card.

## How to Run

1. Make sure Flutter is installed on your machine.
2. Clone this repository.
3. Navigate to the project directory.
4. Run `flutter pub get` to install dependencies.
5. Run `flutter run` to start the application.

## Features

- Input for the credit card number.
- Validation of the card number.
- Identification of the card brand (Visa, MasterCard, Elo, Diners Club, American Express, Discover, Hipercard, EnRoute, JCB, Voyager, Aura, and Unknown).

## Usage Example

1. Enter the card number in the text field.
2. Click the "Validate" button.
3. The card brand will be displayed below the button.

## Contribution

Contributions are welcome! Feel free to open issues and pull requests.

## License

This project is licensed under the MIT license. See the [LICENSE](LICENSE) file for more details.

