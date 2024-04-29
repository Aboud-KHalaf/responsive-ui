import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/widgets/custom_background_container.dart';
import 'package:ui/widgets/latest_transaction_section.dart';
import 'package:ui/widgets/quick_invoice_header.dart';

class QuickInvoicWidget extends StatelessWidget {
  const QuickInvoicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 10),
          LatestTransactionSection()
        ],
      ),
    );
  }
}
