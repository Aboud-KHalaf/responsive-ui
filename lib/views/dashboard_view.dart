import 'package:flutter/material.dart';
import 'package:ui/layouts/tablet_layout.dart';
import 'package:ui/widgets/adaptive_layout_widget.dart';
import 'package:ui/layouts/desktop_layout.dart';
import 'package:ui/widgets/custom_drawer_widget.dart';
import 'package:ui/widgets/income_section.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawerWidget(),
      body: AdaptiveLayoutWidget(
        // moblie layout
        moblieLayout: (context) => const Padding(
          padding: EdgeInsets.all(12.0),
          child: IncomeSection(),
        ),
        // tablet layout
        tabletLayout: (context) => const TabletLayout(),
        // desktop layout
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
