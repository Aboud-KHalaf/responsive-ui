import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget(
      {super.key,
      required this.moblieLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  final WidgetBuilder moblieLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return moblieLayout(context);
        } else if (constraints.maxWidth < 1200) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
