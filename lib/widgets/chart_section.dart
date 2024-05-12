import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ui/models/item_details_model.dart';
import 'package:ui/widgets/income_item_details.dart';

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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child:
              AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData())),
        ),
        const Expanded(
          flex: 2,
          child: IncomeItemsList(),
        ),
      ],
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
            radius: currentTouchIndex == 0 ? 25 : 20),
        PieChartSectionData(
            value: 20,
            color: Colors.cyan,
            radius: currentTouchIndex == 1 ? 25 : 20),
        PieChartSectionData(
            value: 30,
            color: Colors.amberAccent,
            radius: currentTouchIndex == 2 ? 25 : 20),
      ],
    );
  }
}

class IncomeItemsList extends StatelessWidget {
  const IncomeItemsList({super.key});

  static List<ItemDetailsModel> items = [
    ItemDetailsModel(color: Colors.red, titel: 'titile titile  ', value: '10%'),
    ItemDetailsModel(
        color: Colors.green, titel: 'titile titile  ', value: '10%'),
    ItemDetailsModel(
        color: Colors.amber, titel: 'titile titile  ', value: '10%'),
    ItemDetailsModel(
        color: Colors.brown, titel: 'titile titile  ', value: '10%'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeItemDetails(itemDetailsModel: items[index]);
      },
    );
  }
}
