import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/widgets/allexpense_and_quick_invoice_section.dart';
import 'package:ui/widgets/card_and_transaction_history_and_income_section.dart';
import 'package:ui/widgets/custom_drawer_widget.dart';

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
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: AllExpenseAndQuickInvoiceSection(),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        flex: 1,
                        child: CardAndTransactionHistoryAndIncomeSection(),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ],
    );
  }
}
