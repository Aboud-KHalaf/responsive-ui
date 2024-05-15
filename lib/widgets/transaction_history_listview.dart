import 'package:flutter/cupertino.dart';
import 'package:ui/models/transaction_item_model.dart';
import 'package:ui/widgets/transaction_history_item.dart';

class TransactionsHistoryListView extends StatelessWidget {
  const TransactionsHistoryListView({
    super.key,
  });

  static List<TransactionItemModel> transactions = [
    const TransactionItemModel(
        titel: 'by a sport car',
        date: '2022-2-2',
        price: r'$150',
        transactionType: TransactionType.expense),
    const TransactionItemModel(
        titel: 'by a sport car',
        date: '2022-2-2',
        price: r'$150',
        transactionType: TransactionType.income),
    const TransactionItemModel(
        titel: 'by a sport car',
        date: '2022-2-2',
        price: r'$150',
        transactionType: TransactionType.income),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((e) {
        return TransactionHistoryItem(transaction: e);
      }).toList(),
    );

    /// this code will make a problem
    ///
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: transactions.length,
    //   itemBuilder: (context, index) {
    //     return TransactionHistoryItem(
    //       transaction: transactions[index],
    //     );
    //   },
    // );
  }
}
