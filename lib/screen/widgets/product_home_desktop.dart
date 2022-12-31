import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_product_page/screen/widgets/categories_widget.dart';
import 'package:responsive_product_page/screen/widgets/footer_list.dart';
import 'package:responsive_product_page/screen/widgets/image_slider.dart';
import 'package:responsive_product_page/screen/widgets/product_options.dart';
import 'package:responsive_product_page/screen_size_helper.dart';

class ProductHomeDesktopWidget extends StatefulWidget {
  const ProductHomeDesktopWidget({super.key});

  @override
  State<ProductHomeDesktopWidget> createState() =>
      _ProductHomeDesktopWidgetState();
}

class _ProductHomeDesktopWidgetState extends State<ProductHomeDesktopWidget> {
  @override
  Widget build(BuildContext context) {
    final screenType = context.screenType();
    final verticalController = ScrollController();
    return Container(
      color: Colors.white,
      child: Scrollbar(
        controller: verticalController,
        thumbVisibility: true,
        child: SingleChildScrollView(
            controller: verticalController,
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CategoriesWidget(),
                Flex(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  direction: Axis.horizontal,
                  children: [
                    const Visibility(
                      child: SizedBox(
                        width: 20,
                      ),
                    ),
                    const Visibility(
                      child: Expanded(flex: 10, child: ProductOptions()),
                    ),
                    const Visibility(
                      child: SizedBox(
                        width: 20,
                      ),
                    ),
                    Expanded(
                      flex: 5,
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
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          IconButton(
                            icon: const Icon(Icons.favorite_border_rounded),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.share),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon:
                                const Icon(Icons.notifications_active_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.ssid_chart_rounded),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.compare_rounded),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.list_rounded),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  height: 1,
                  color: Colors.black12,
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 20, bottom: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      textDirection: TextDirection.rtl,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FooterItemWidget(
                          item: FooterItem('امکان تحویل اکسپرس',
                              Image.asset('assets/images/ic_express.png')),
                        ),
                        FooterItemWidget(
                          item: FooterItem('۲۴ ساعته، ۷ روز هفته',
                              Image.asset('assets/images/ic_headphone.png')),
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
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  height: 3,
                  color: Colors.black26,
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                // const SimilarProducts(),
                const SizedBox(
                  height: 10,
                ),
              ],
            )),
      ),
    );
  }
}
