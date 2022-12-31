import 'package:flutter/material.dart';
import 'package:responsive_product_page/colors.dart';
import 'package:responsive_product_page/screen/widgets/product_colors.dart';

class ProductOptionsMobile extends StatefulWidget {
  const ProductOptionsMobile({super.key});

  @override
  State<ProductOptionsMobile> createState() => _ProductOptionsMobileState();
}

class _ProductOptionsMobileState extends State<ProductOptionsMobile> {
  int _selectedColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Row(
        textDirection: TextDirection.rtl,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            'اپل',
            style: TextStyle(
                color: AppColors.blueText, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            '/',
            style: TextStyle(
                color: AppColors.blueText, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'گوشی موبایل',
            style: TextStyle(
                color: AppColors.blueText, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        'گوشی موبایل اپل مدل iPhone 13 CH دو سیم‌ کارت ظرفیت 128 گیگابایت و رم 4 گیگابایت',
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        textDirection: TextDirection.rtl,
        style: TextStyle(
            color: AppColors.black, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      const SizedBox(
        height: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(child: Container()),
              const Text('۲۲۳ پرسش'),
              const SizedBox(
                width: 5,
              ),
              const CircleAvatar(
                backgroundColor: Colors.black12,
                radius: 3,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text('۴۸۵ دیدگاه'),
              const SizedBox(
                width: 5,
              ),
              const CircleAvatar(
                backgroundColor: Colors.black12,
                radius: 3,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text('(۳۷۸) ۴.۵'),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.star_border_purple500_rounded,
                color: Colors.amber,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            textDirection: TextDirection.rtl,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.thumb_up_alt,
                color: AppColors.green,
              ),
              const Expanded(
                  child: Flexible(
                child: Text(
                  '۸۸% (۲۳۰ نفر) از خریداران، این کالا را پیشنهاد کرده اند',
                  textDirection: TextDirection.rtl,
                ),
              )),
              const Icon(
                Icons.info_outline,
                color: Colors.black26,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            color: Colors.black12,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              ProductColors(
                  productColors: [
                    ProductColorModel('رنگ: صورتی', AppColors.pink),
                    ProductColorModel('رنگ: آبی', AppColors.blue),
                    ProductColorModel('رنگ: قرمز', AppColors.red),
                    ProductColorModel('رنگ: مشکی', AppColors.black)
                  ],
                  onChange: (index) {
                    setState(() {
                      _selectedColorIndex = index;
                    });
                  },
                  selectedIndex: _selectedColorIndex),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            textDirection: TextDirection.rtl,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'بیمه',
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                const SizedBox(
                  width: 45,
                  child: Center(
                      child: Icon(Icons.check_box_outline_blank_rounded)),
                ),
                Container(
                  height: 80,
                  width: 1,
                  color: Colors.black26,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'بیمه تجهیزات دیجیتال - بیمه پارسیان',
                        style: TextStyle(color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        textDirection: TextDirection.rtl,
                        children: [
                          const Text(
                            '۹۸۴,۲۷۰ تومان',
                            style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: () {},
                            // ignore: prefer_const_constructors
                            child: Text(
                              'جزییات >',
                              style: const TextStyle(color: AppColors.blue),
                              textDirection: TextDirection.rtl,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 5,
            color: AppColors.grey,
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                children: [
                  const Text(
                    'فروشنده',
                    style: TextStyle(
                        color: AppColors.black, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    ' فروشنده دیگر',
                    style: TextStyle(color: AppColors.blue),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  Image.asset(
                    "assets/images/digi_icon_logo.png",
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text('دیجی کالا')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  const SizedBox(
                    width: 35,
                  ),
                  const Text('عملکرد'),
                  const Text(
                    'عالی',
                    style: TextStyle(color: AppColors.green),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 1,
                color: Colors.black12,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  const Icon(Icons.verified_user_outlined),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text('گارانتی 18 ماهه تک تیم فن')
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 1,
                color: Colors.black12,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  const Icon(
                    Icons.verified_outlined,
                    color: AppColors.blue,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text('موجود در انبار دیجی کالا'),
                  const Expanded(child: SizedBox()),
                  const Icon(Icons.chevron_left_rounded)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 2,
                    height: 5,
                    color: Colors.black12,
                  ),
                ],
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  const SizedBox(
                    width: 7,
                  ),
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: AppColors.green,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.delivery_dining_rounded,
                    color: AppColors.red,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('ارسال دیجی کالا'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 1,
                color: Colors.black12,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                textDirection: TextDirection.rtl,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.star_border_purple500,
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text('امتیاز دیجی‌کلاب'),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.info_outline_rounded,
                    size: 20,
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 5,
                color: AppColors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            textDirection: TextDirection.rtl,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'ویژگی‌ها',
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            textDirection: TextDirection.rtl,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CircleAvatar(
                radius: 3,
                backgroundColor: Colors.black38,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'فناوری صفحه‌نمایش :',
                textDirection: TextDirection.rtl,
                style: TextStyle(color: Colors.black38),
              ),
              const SizedBox(
                width: 5,
              ),
              const Expanded(
                  child: Text(
                'Super Retina XDR OLED',
                textAlign: TextAlign.right,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            textDirection: TextDirection.rtl,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CircleAvatar(
                radius: 3,
                backgroundColor: Colors.black38,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'اندازه :',
                textDirection: TextDirection.rtl,
                style: TextStyle(color: Colors.black38),
              ),
              const SizedBox(
                width: 5,
              ),
              const Expanded(
                  child: Text(
                '6.1',
                textAlign: TextAlign.right,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            textDirection: TextDirection.rtl,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CircleAvatar(
                radius: 3,
                backgroundColor: Colors.black38,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'رزولوشن عکس :',
                textDirection: TextDirection.rtl,
                style: TextStyle(color: Colors.black38),
              ),
              const SizedBox(
                width: 5,
              ),
              const Expanded(
                  child: Text(
                '12  مگاپیکسل',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            textDirection: TextDirection.rtl,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CircleAvatar(
                radius: 3,
                backgroundColor: Colors.black38,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'نسخه سیستم عامل :',
                textDirection: TextDirection.rtl,
                style: TextStyle(color: Colors.black38),
              ),
              const SizedBox(
                width: 5,
              ),
              const Expanded(
                  child: Text(
                'iOS 15',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            color: Colors.black12,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                children: [
                  const Text(
                    'ارسال رایگان برای این کالا',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/images/red_truck.png')
                ],
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
