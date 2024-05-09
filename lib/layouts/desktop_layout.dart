import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:ui/widgets/allexpense_and_quick_invoice_section.dart';

import 'package:ui/widgets/custom_drawer_widget.dart';
import 'package:ui/widgets/income_section.dart';

import '../widgets/card_and_transaction_history_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawerWidget(),
        ),
        SizedBox(width: 12),
        Expanded(
          flex: 2,
          child: AllExpenseAndQuickInvoiceSection(),
        ),
        SizedBox(width: 12),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Expanded(
                child: CardAndTransactionHistorySection(),
              ),
              SizedBox(height: 12),
              Expanded(child: IncomeSection()),
            ],
          ),
        ),
      ],
    );
  }
}
