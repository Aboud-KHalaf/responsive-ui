import 'package:flutter/material.dart';
import 'package:ui/widgets/allexpense_and_quick_invoice_section.dart';
import 'package:ui/widgets/card_and_transaction_history_section.dart';
import 'package:ui/widgets/income_section.dart';

class MoblieLayout extends StatelessWidget {
  const MoblieLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpenseAndQuickInvoiceSection(),
          SizedBox(height: 12),
          CardAndTransactionHistorySection(),
          SizedBox(height: 12),
          IncomeSection(),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
