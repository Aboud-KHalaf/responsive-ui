import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpenseItemHeader extends StatelessWidget {
  const AllExpenseItemHeader({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Colors.grey,
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
            ),
          ),
        ),
        const RotatedBox(
          quarterTurns: 90,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
