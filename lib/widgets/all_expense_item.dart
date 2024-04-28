import 'package:flutter/material.dart';
import 'package:ui/models/all_expense_item_model.dart';
import 'package:ui/utils/app_styles.dart';
import 'package:ui/widgets/all_expense_item_header.dart';

class AllExpenseItems extends StatelessWidget {
  const AllExpenseItems({
    super.key,
    required this.itemModel,
  });

  final AllExpenseItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.cyan,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpenseItemHeader(image: itemModel.image),
            const SizedBox(height: 16),
            Text(
              itemModel.titel,
              style: AppStyles.styleMedium16(context),
            ),
            const SizedBox(height: 8),
            Text(
              itemModel.date,
              style: AppStyles.styleRegular14(context),
            ),
            const SizedBox(height: 16),
            Text(
              itemModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ],
        ),
      ),
    );
  }
}
