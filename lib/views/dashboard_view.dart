import 'package:flutter/material.dart';
import 'package:ui/layouts/mobile_layout.dart';
import 'package:ui/layouts/tablet_layout.dart';
import 'package:ui/widgets/adaptive_layout_widget.dart';
import 'package:ui/layouts/desktop_layout.dart';
import 'package:ui/widgets/custom_drawer_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(backgroundColor: Colors.cyan)
          : null,
      drawer: MediaQuery.sizeOf(context).width < 800
          ? const CustomDrawerWidget()
          : null,
      body: AdaptiveLayoutWidget(
        // moblie layout
        moblieLayout: (context) => const MoblieLayout(),
        // tablet layout
        tabletLayout: (context) => const TabletLayout(),
        // desktop layout
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
