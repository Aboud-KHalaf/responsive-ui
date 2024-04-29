import 'package:flutter/material.dart';
import 'package:ui/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.cyan,
          ),
        ),
      ],
    );
  }
}
