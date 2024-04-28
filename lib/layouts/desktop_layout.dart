import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/widgets/all_expense_widget.dart';
import 'package:ui/widgets/custom_drawer_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawerWidget(),
        ),
        SizedBox(width: 12),
        Expanded(
          flex: 2,
          child: AllExpenseWidget(),
        ),
        SizedBox(width: 12),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );
  }
}
