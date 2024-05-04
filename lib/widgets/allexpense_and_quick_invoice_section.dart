import 'package:flutter/material.dart';
import 'package:ui/widgets/all_expense_widget.dart';

class AllExpenseAndQuickInvoiceSection extends StatelessWidget {
  const AllExpenseAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        AllExpenseWidget(),
        SizedBox(height: 12),
        //    QuickInvoicWidget(),
      ],
    );
  }
}
