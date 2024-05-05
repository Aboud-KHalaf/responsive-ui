class TransactionItemModel {
  final String titel, date, price;
  final TransactionType transactionType;

  const TransactionItemModel(
      {required this.transactionType,
      required this.titel,
      required this.date,
      required this.price});
}

enum TransactionType {
  expense,
  income,
}
