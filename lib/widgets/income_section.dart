import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/widgets/chart_section.dart';
import 'package:ui/widgets/custom_background_container.dart';
import 'package:ui/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          ChartSection(),
        ],
      ),
    );
  }
}
