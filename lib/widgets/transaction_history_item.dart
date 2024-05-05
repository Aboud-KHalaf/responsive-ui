import 'package:flutter/material.dart';
import 'package:ui/models/transaction_item_model.dart';
import 'package:ui/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.transaction,
  });

  final TransactionItemModel transaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        title:
            Text(transaction.titel, style: AppStyles.styleSemiBold16(context)),
        subtitle:
            Text(transaction.date, style: AppStyles.styleRegular14(context)),
        trailing: Text(
          transaction.price,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: (transaction.transactionType == TransactionType.income)
                ? Colors.green
                : Colors.red,
          ),
        ),
      ),
    );
  }
}
