import 'package:flutter/material.dart';
import 'package:responsive_product_page/colors.dart';
import 'package:responsive_product_page/screen/widgets/app_logo.dart';
import 'package:responsive_product_page/screen/widgets/search_bar.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar(
      {super.key, required this.onPressed, required this.isDrawerOpened});
  final VoidCallback onPressed;
  final bool isDrawerOpened;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  splashRadius: 1,
                  onPressed: onPressed,
                  icon: isDrawerOpened
                      ? const Icon(Icons.close)
                      : const Icon(Icons.menu)),
              const Spacer(),
              const AppLogo(),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.question_mark_rounded)),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 2,
            width: double.infinity,
            color: AppColors.grey,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SearchBar(),
              const SizedBox(
                width: 5,
              ),
              Container(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.login_rounded,
                        color: Colors.black,
                        textDirection: TextDirection.ltr,
                      ),
                      const Text('ورود'),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_shopping_cart_rounded)),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 2,
            width: double.infinity,
            color: AppColors.grey,
          ),
        ],
      ),
    );
  }
}
