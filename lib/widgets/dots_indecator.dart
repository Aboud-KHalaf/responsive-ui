import 'package:flutter/cupertino.dart';
import 'package:ui/widgets/custom_dot_indecator.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({super.key, required this.currentIndex});

  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomDotIndecator(
            isActive: (index == currentIndex),
          ),
        );
      }),
    );
  }
}
