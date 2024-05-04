import 'package:flutter/material.dart';
import 'package:ui/widgets/adaptive_layout_widget.dart';
import 'package:ui/layouts/desktop_layout.dart';
import 'package:ui/widgets/cards_section.dart';
import 'package:ui/widgets/custom_drawer_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawerWidget(),
      body: AdaptiveLayoutWidget(
        // temp
        moblieLayout: (context) => const Padding(
          padding: EdgeInsets.all(12.0),
          child: CardSection(),
        ),
        // temp
        tabletLayout: (context) => const SizedBox(),
        // work here
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
