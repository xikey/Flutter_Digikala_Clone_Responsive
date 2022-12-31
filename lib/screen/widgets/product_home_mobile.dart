import 'package:flutter/material.dart';
import 'package:responsive_product_page/colors.dart';
import 'package:responsive_product_page/screen/widgets/categories_widget.dart';
import 'package:responsive_product_page/screen/widgets/footer_list.dart';
import 'package:responsive_product_page/screen/widgets/product_options.dart';
import 'package:responsive_product_page/screen/widgets/product_options_mobile.dart';
import 'package:responsive_product_page/screen_size_helper.dart';

import 'image_slider.dart';

class ProductHomeMobileWidget extends StatefulWidget {
  const ProductHomeMobileWidget({super.key});

  @override
  State<ProductHomeMobileWidget> createState() =>
      _ProductHomeMobileWidgetState();
}

class _ProductHomeMobileWidgetState extends State<ProductHomeMobileWidget> {
  @override
  Widget build(BuildContext context) {
    final screenType = context.screenType();
    final verticalController = ScrollController();
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Scrollbar(
            controller: verticalController,
            thumbVisibility: true,
            child: SingleChildScrollView(
                padding: const EdgeInsets.only(left: 15, right: 15),
                controller: verticalController,
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flex(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      direction: Axis.vertical,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const CategoriesWidget(),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          textDirection: TextDirection.rtl,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              icon: const Icon(Icons.favorite_border_rounded),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              icon: const Icon(Icons.share),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              icon: const Icon(
                                  Icons.notifications_active_outlined),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              icon: const Icon(Icons.ssid_chart_rounded),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              icon: const Icon(Icons.compare_rounded),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              icon: const Icon(Icons.list_rounded),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        Expanded(
                          flex: 0,
                          child: ImageSlider(
                            images: const [
                              "https://dkstatics-public.digikala.com/digikala-products/7cfb89cde69654d65b61252ba88ae6dda964e411_1650873644.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90",
                              "https://dkstatics-public.digikala.com/digikala-products/a2cc9b4a98da7abfac95831efa4c0d9c8d2cd0b2_1655536773.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90",
                              "https://dkstatics-public.digikala.com/digikala-products/5a4eb650fb7ccab910323c035cf249142ea110ec_1653823283.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90",
                              "https://dkstatics-public.digikala.com/digikala-products/77f7dbf62f16795381e816a61b44456301e7c010_1650873433.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90",
                            ],
                            screenType: screenType,
                          ),
                        ),
                        const ProductOptionsMobile(),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 1,
                      color: Colors.black12,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          textDirection: TextDirection.rtl,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FooterItemWidget(
                              item: FooterItem('امکان تحویل اکسپرس',
                                  Image.asset('assets/images/ic_express.png')),
                            ),
                            FooterItemWidget(
                              item: FooterItem(
                                  '۲۴ ساعته، ۷ روز هفته',
                                  Image.asset(
                                      'assets/images/ic_headphone.png')),
                            ),
                            FooterItemWidget(
                              item: FooterItem('امکان پرداخت در محل',
                                  Image.asset('assets/images/ic_location.png')),
                            ),
                            FooterItemWidget(
                              item: FooterItem('هفت روز ضمانت بازگشت کالا',
                                  Image.asset('assets/images/ic_box.png')),
                            ),
                            FooterItemWidget(
                              item: FooterItem('ضمانت اصل بودن کالا',
                                  Image.asset('assets/images/ic_verify.png')),
                            )
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height: 3,
                      color: Colors.black26,
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // const SimilarProducts(),
                    const SizedBox(
                      height: 70,
                    ),
                  ],
                )),
          ),
        ),
        Positioned(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: AppColors.grey,
            height: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 2, color: Colors.black26),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          ' ۳۶,۱۰۰,۰۰۰ تومان ',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2,
                          child: ElevatedButton.icon(
                            label: const Text(
                              " افزودن به سبد خرید ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)))),
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_cart),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ],
    );
  }
}
