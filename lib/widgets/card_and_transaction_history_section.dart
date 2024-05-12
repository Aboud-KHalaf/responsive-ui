import 'package:flutter/material.dart';
import 'package:ui/widgets/cards_section.dart';
import 'package:ui/widgets/custom_background_container.dart';
import 'package:ui/widgets/transaction_history_header.dart';
import 'package:ui/widgets/transaction_history_listview.dart';

class CardAndTransactionHistorySection extends StatelessWidget {
  const CardAndTransactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardSection(),
          Divider(
            height: 20,
          ),
          TransactionHistoryHeader(),
          TransactionsHistoryListView(),
        ],
      ),
    );
  }
}
