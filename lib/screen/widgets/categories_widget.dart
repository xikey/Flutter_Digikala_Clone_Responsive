import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_product_page/screen_size_helper.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenType = context.screenType();
    final double startdMargin = screenType == ScreenType.desktop ? 50 : 20;
    return Visibility(
        child: Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          SizedBox(
            width: startdMargin,
          ),
          const Text('دیجی کالا'),
          const SizedBox(
            width: 15,
          ),
          const Text('/'),
          const Text('موبایل'),
          const SizedBox(
            width: 15,
          ),
          const Text('/'),
          const SizedBox(
            width: 15,
          ),
          const Text('گوشی موبایل'),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    ));
  }
}
