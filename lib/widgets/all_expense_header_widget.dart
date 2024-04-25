import 'package:flutter/material.dart';
import 'package:ui/utils/app_styles.dart';
import 'package:ui/widgets/custom_drop_down_button_widget.dart';

class AllExpenseHeader extends StatelessWidget {
  const AllExpenseHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expense',
          style: AppStyles.styleSemiBold20(context),
        ),
        const CustomDropdownButtonWidget()
      ],
    );
  }
}
