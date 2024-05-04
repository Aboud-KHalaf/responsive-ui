import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:ui/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: controller,
      children: List.generate(
        3,
        (index) => const MyCard(),
      ),
    );
  }
}
