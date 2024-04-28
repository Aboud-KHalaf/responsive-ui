import 'package:flutter/material.dart';
import 'package:ui/models/all_expense_item_model.dart';
import 'package:ui/widgets/inactive_and_active_expense_item.dart';

class AllExpenseItems extends StatelessWidget {
  const AllExpenseItems({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });

  final AllExpenseItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? InActiveExpenseItem(itemModel: itemModel)
        : ActiveExpenseItem(itemModel: itemModel);
  }
}
