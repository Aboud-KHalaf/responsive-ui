import 'package:flutter/material.dart';
import 'package:ui/widgets/adaptive_layout_widget.dart';
import 'package:ui/widgets/layouts/desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        // temp
        moblieLayout: (context) => const SizedBox(),
        // temp
        tabletLayout: (context) => const SizedBox(),
        // work here
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
