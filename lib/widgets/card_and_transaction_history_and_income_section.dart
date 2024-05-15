import 'package:flutter/material.dart';
import 'package:ui/widgets/card_and_transaction_history_section.dart';
import 'package:ui/widgets/income_section.dart';

class CardAndTransactionHistoryAndIncomeSection extends StatelessWidget {
  const CardAndTransactionHistoryAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 2,
          child: CardAndTransactionHistorySection(),
        ),
        SizedBox(height: 12),
        Expanded(flex: 1, child: IncomeSection()),
      ],
    );
  }
}
