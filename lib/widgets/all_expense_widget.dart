import 'package:flutter/material.dart';
import 'package:ui/widgets/all_expense_header_widget.dart';
import 'package:ui/widgets/all_expense_itmes.dart';
import 'package:ui/widgets/custom_background_container.dart';

class AllExpenseWidget extends StatelessWidget {
  const AllExpenseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpenseHeader(),
          SizedBox(height: 10),
          AllExpenseItemsWidget()
        ],
      ),
    );
  }
}
