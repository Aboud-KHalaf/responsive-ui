import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpenseItemHeader extends StatelessWidget {
  const AllExpenseItemHeader({
    super.key,
    required this.image,
    this.imageColor,
  });

  final String image;
  final Color? imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: imageColor != null
                  ? ColorFilter.mode(
                      imageColor!,
                      BlendMode.srcIn,
                    )
                  : null,
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
