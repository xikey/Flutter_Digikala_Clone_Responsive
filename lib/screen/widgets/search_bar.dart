import 'package:flutter/material.dart';
import 'package:responsive_product_page/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.only(top: 5),
      decoration: const BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: const TextField(
        cursorColor: Colors.black54,
        decoration: InputDecoration(
          isDense: true,
          hintText: "جستجو",
          hintStyle: TextStyle(
              fontSize: 16, color: Colors.black54, fontFamily: "Roboto"),
          prefixIcon: Icon(
            Icons.search,
            size: 30,
            color: Colors.black54,
          ),
          border: InputBorder.none,
        ),
      ),
    ));
  }
}
