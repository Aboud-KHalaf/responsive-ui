import 'package:flutter/material.dart';
import 'package:ui/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: AppStyles.styleRegular12(context).copyWith(
              color: Colors.cyan,
            ),
          ),
        ),
      ],
    );
  }
}
