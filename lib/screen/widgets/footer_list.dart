import 'package:flutter/material.dart';
import 'package:responsive_product_page/screen_size_helper.dart';

class FooterItemWidget extends StatelessWidget {
  const FooterItemWidget({super.key, required this.item});
  final FooterItem item;

  @override
  Widget build(BuildContext context) {
    print('type is $context.screenType');
    return SizedBox(
      child: Column(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            item.image,
            SizedBox(
              width: MediaQuery.of(context).size.width / 6,
              child: Text(
                item.name,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 12),
              ),
            )
          ]),
    );
  }
}

class FooterItem {
  FooterItem(this.name, this.image);
  final String name;
  final Image image;
}
