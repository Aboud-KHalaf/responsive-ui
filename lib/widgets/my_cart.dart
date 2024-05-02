import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/utils/app_images.dart';
import 'package:ui/utils/app_styles.dart';

class MyCart extends StatelessWidget {
  const MyCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 230,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.cyan,
          image: const DecorationImage(
            image: AssetImage(
              Assets.imagesCardBackground,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Name Card',
                  style: AppStyles.styleRegular16(context),
                ),
                subtitle: Text(
                  'Aboud Khalaf',
                  style: AppStyles.styleMedium20(context),
                ),
                trailing: SvgPicture.asset(
                  Assets.imagesGallery,
                ),
              ),
              const Expanded(child: SizedBox()),
              Text(
                '922 992 922 292',
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white),
              ),
              Text(
                '24/12 - 24',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
