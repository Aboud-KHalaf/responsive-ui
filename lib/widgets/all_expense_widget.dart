import 'package:flutter/material.dart';
import 'package:ui/widgets/all_expense_header_widget.dart';

class AllExpenseWidget extends StatelessWidget {
  const AllExpenseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        children: [
          AllExpenseHeader(),
        ],
      ),
    );
  }
}
