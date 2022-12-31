import 'package:flutter/material.dart';
import 'package:responsive_product_page/colors.dart';
import 'package:responsive_product_page/screen/widgets/botton_hovered_widget.dart';
import 'package:responsive_product_page/screen/widgets/search_bar.dart';

import 'app_logo.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    double searchWidth = 600;
    if (width > 1000) {
      searchWidth = 600;
    } else {
      searchWidth = (width - 400);
    }
    print(width);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const AppLogo(),
              SizedBox(
                width: searchWidth,
                height: 50,
                child: const SearchBar(),
              ),
              Expanded(child: Container()),
              Container(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      Container(
                        height: 10,
                        width: 2,
                        color: AppColors.black,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('ثبت نام'),
                    ],
                  )),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 25,
                width: 1,
                color: Colors.black12,
              ),
              const SizedBox(
                width: 5,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_shopping_cart_rounded)),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              HoveredButtonUnderline(
                text: const Text(
                  'دسته بندی کالاها',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                onpressed: () {},
                icon: const Icon(
                  Icons.list_rounded,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 1,
                height: 15,
                color: Colors.black38,
              ),
              const SizedBox(
                width: 5,
              ),
              HoveredButtonUnderline(
                text: const Text(
                  'سوپرمارکت',
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
                onpressed: () {},
                icon: const Icon(
                  Icons.bakery_dining_rounded,
                  size: 20,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              HoveredButtonUnderline(
                text: const Text(
                  'پرفروشترین ها',
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
                onpressed: () {},
                icon: const Icon(
                  Icons.hotel_class_rounded,
                  size: 20,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              HoveredButtonUnderline(
                text: const Text(
                  'تخفیف ها و پیشنهادها',
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
                onpressed: () {},
                icon: const Icon(
                  Icons.discount_rounded,
                  size: 20,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              HoveredButtonUnderline(
                text: const Text(
                  'شگفت انگیزها',
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
                onpressed: () {},
                icon: const Icon(
                  Icons.percent_rounded,
                  size: 20,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 1,
                height: 15,
                color: Colors.black38,
              ),
              const SizedBox(
                width: 5,
              ),
              HoveredButtonUnderline(
                text: const Text(
                  'سوالی دارید؟',
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
                onpressed: () {},
                icon: const Icon(
                  Icons.percent_rounded,
                  size: 1,
                  color: Colors.transparent,
                ),
              ),
            ],
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
