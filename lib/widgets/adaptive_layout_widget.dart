import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.moblieLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  final WidgetBuilder moblieLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return moblieLayout(context);
        } else if (constraints.maxWidth < 900) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
