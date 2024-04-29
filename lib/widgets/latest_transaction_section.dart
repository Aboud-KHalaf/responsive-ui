import 'package:flutter/material.dart';
import 'package:ui/widgets/latest_transaction_list_view.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Latest Transactions'),
        SizedBox(height: 7),
        LatestTransactionsListViewWidget(),
      ],
    );
  }
}
