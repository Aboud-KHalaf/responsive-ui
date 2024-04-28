import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/models/all_expense_item_model.dart';
import 'package:ui/utils/app_images.dart';
import 'package:ui/widgets/all_expense_item.dart';

class AllExpenseItemsWidget extends StatelessWidget {
  const AllExpenseItemsWidget({
    super.key,
  });

  static List<AllExpenseItemModel> items = const [
    AllExpenseItemModel(
      image: Assets.imagesIncome,
      titel: 'Income',
      date: '2022-1-1',
      price: r'$1000',
    ),
    AllExpenseItemModel(
      image: Assets.imagesIncome,
      titel: 'Income',
      date: '2022-1-1',
      price: r'$1000',
    ),
    AllExpenseItemModel(
      image: Assets.imagesIncome,
      titel: 'Income',
      date: '2022-1-1',
      price: r'$1000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map(
            (e) => Expanded(
              child: AllExpenseItems(
                itemModel: e,
              ),
            ),
          )
          .toList(),
    );
  }
}
