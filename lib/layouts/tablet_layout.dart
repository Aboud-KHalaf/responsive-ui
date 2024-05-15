import 'package:flutter/material.dart';
import 'package:ui/layouts/mobile_layout.dart';
import 'package:ui/widgets/custom_drawer_widget.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawerWidget(),
        ),
        SizedBox(width: 12),
        Expanded(
          flex: 3,
          child: MoblieLayout(),
        ),
        SizedBox(width: 12),
      ],
    );
  }
}
