import 'package:flutter/cupertino.dart';
import 'package:ui/widgets/dots_indecator.dart';
import 'package:ui/widgets/my_cards_page_view.dart';

class CardSection extends StatefulWidget {
  const CardSection({
    super.key,
  });

  @override
  State<CardSection> createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
  late PageController pageController;
  int currentPageIndex = 1;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.toInt();
        //  print(currentPageIndex);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        MyCardsPageView(
          controller: pageController,
        ),
        const SizedBox(height: 8),
        DotsIndecator(currentIndex: currentPageIndex),
      ],
    );
  }
}
