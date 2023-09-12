class CreditCardWidgetModel {
  final String cardNumber;
  final String expiryDate;
  final String cardHolderName;
  final String cvvCode;
  final bool showBackView;

  CreditCardWidgetModel(
      {required this.cardNumber,
        required this.expiryDate,
        required this.cardHolderName,
        required this.cvvCode,
        required this.showBackView});
}

List<CreditCardWidgetModel> listData = [
  CreditCardWidgetModel(
      cardHolderName: 'Alice',
      cardNumber: '5242424242424242',
      cvvCode: '124',
      expiryDate: '01-02-03',
      showBackView: true),
];