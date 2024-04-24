import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/widgets/custom_drawer_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawerWidget()),
      ],
    );
  }
}
