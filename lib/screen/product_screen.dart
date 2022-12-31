import 'package:flutter/material.dart';
import 'package:responsive_product_page/screen/widgets/desktop_appbar.dart';
import 'package:responsive_product_page/screen/widgets/mobile_appbar.dart';
import 'package:responsive_product_page/screen/widgets/product_home_desktop.dart';
import 'package:responsive_product_page/screen/widgets/product_home_mobile.dart';
import 'package:responsive_product_page/screen_size_helper.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool _isDrawerOpened = false;

  @override
  Widget build(BuildContext context) {
    final screenType = context.screenType();

    return Scaffold(
        backgroundColor: Colors.white,
        drawer: screenType == ScreenType.mobile ? const Drawer() : null,
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(screenType == ScreenType.mobile ? 104 : 110),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Visibility(
                visible: screenType == ScreenType.desktop,
                replacement: MobileAppBar(
                    onPressed: _isDrawerOpened ? _closeDrawer : _openDrawer,
                    isDrawerOpened: _isDrawerOpened),
                child: const DesktopAppBar()),
          ),
        ),
        body: screenType == ScreenType.desktop
            ? const ProductHomeDesktopWidget()
            : const ProductHomeMobileWidget());
  }

  void _openDrawer() {
    setState(() {
      _isDrawerOpened = true;
    });
  }

  void _closeDrawer() {
    setState(() {
      _isDrawerOpened = false;
    });
  }
}
