import 'package:flutter/material.dart';
import 'package:responsive_product_page/colors.dart';

class HoveredButtonUnderline extends StatefulWidget {
  const HoveredButtonUnderline(
      {Key? key,
      required this.text,
      required this.onpressed,
      required this.icon})
      : super(key: key);
  final Text text;
  final Function() onpressed;
  final Icon icon;

  @override
  _HoveredButtonUnderlineState createState() => _HoveredButtonUnderlineState();
}

class _HoveredButtonUnderlineState extends State<HoveredButtonUnderline> {
  late bool showBorder = false;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: showBorder
            ? const Border(
                bottom: BorderSide(color: AppColors.red, width: 2),
              )
            : null,
      ),
      child: InkWell(
        onTap: () {},
        hoverColor: Colors.transparent,
        onHover: (hovered) {
          setState(() {
            showBorder = hovered;
          });
        },
        child: Row(
          children: [
            widget.icon,
            TextButton(
              onPressed: widget.onpressed,
              child: widget.text,
            ),
          ],
        ),
      ),
    );
  }
}
