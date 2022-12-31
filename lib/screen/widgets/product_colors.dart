import 'package:flutter/material.dart';
import 'package:responsive_product_page/colors.dart';

class ProductColorModel {
  final String title;
  final Color color;

  ProductColorModel(this.title, this.color);
}

class ProductColors extends StatelessWidget {
  const ProductColors(
      {super.key,
      required this.productColors,
      required this.onChange,
      required this.selectedIndex});
  final List<ProductColorModel> productColors;
  final int selectedIndex;
  final Function(int index) onChange;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(productColors[selectedIndex].title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            )),
        const SizedBox(
          height: 15,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
                productColors.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: _ColorItem(
                          onPressed: () {
                            onChange(index);
                          },
                          color: productColors[index].color,
                          isSelected: selectedIndex == index),
                    ))),
      ],
    );
  }
}

class _ColorItem extends StatelessWidget {
  const _ColorItem(
      {required this.color, required this.isSelected, required this.onPressed});
  final Color color;
  final bool isSelected;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            border:
                isSelected ? Border.all(color: AppColors.blue, width: 3) : null,
            borderRadius: BorderRadius.circular(19)),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey, width: 2),
              color: color,
              borderRadius: BorderRadius.circular(19)),
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
