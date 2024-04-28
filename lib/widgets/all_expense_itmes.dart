import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/models/all_expense_item_model.dart';
import 'package:ui/utils/app_images.dart';
import 'package:ui/widgets/all_expense_item.dart';

class AllExpenseItemsWidget extends StatefulWidget {
  const AllExpenseItemsWidget({
    super.key,
  });

  @override
  State<AllExpenseItemsWidget> createState() => _AllExpenseItemsWidgetState();
}

class _AllExpenseItemsWidgetState extends State<AllExpenseItemsWidget> {
  final List<AllExpenseItemModel> items = const [
    AllExpenseItemModel(
      image: Assets.imagesBalance,
      titel: 'Balance',
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
      image: Assets.imagesExpenses,
      titel: 'Expenses',
      date: '2022-1-1',
      price: r'$1000',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = e.key;
              });
            },
            child: AllExpenseItems(
              isSelected: e.key == selectedIndex,
              itemModel: e.value,
            ),
          ),
        );
      }).toList(),
    );
  }
}
