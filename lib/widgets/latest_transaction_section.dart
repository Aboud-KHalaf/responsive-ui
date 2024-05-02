import 'package:flutter/material.dart';
import 'package:ui/utils/app_styles.dart';
import 'package:ui/widgets/latest_transaction_list_view.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transactions',
          style: AppStyles.styleSemiBold16(context),
        ),
        const SizedBox(height: 7),
        const LatestTransactionsListViewWidget(),
      ],
    );
  }
}
