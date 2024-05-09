import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

class ChartSection extends StatefulWidget {
  const ChartSection({
    super.key,
  });

  @override
  State<ChartSection> createState() => _ChartSectionState();
}

class _ChartSectionState extends State<ChartSection> {
  int currentTouchIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: PieChart(getPieChartData()),
          )
        ],
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (p0, p1) {
          currentTouchIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
            value: 50,
            color: Colors.red,
            radius: currentTouchIndex == 0 ? 40 : 30),
        PieChartSectionData(
            value: 20,
            color: Colors.cyan,
            radius: currentTouchIndex == 1 ? 40 : 30),
        PieChartSectionData(
            value: 30,
            color: Colors.amberAccent,
            radius: currentTouchIndex == 2 ? 40 : 30),
      ],
    );
  }
}
