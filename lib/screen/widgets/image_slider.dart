import 'package:flutter/material.dart';
import 'package:responsive_product_page/colors.dart';
import 'package:responsive_product_page/screen_size_helper.dart';

class ImageSlider extends StatefulWidget {
  final ScreenType screenType;
  final List<String> images;
  const ImageSlider(
      {super.key, required this.images, this.screenType = ScreenType.desktop})
      : assert(images.length >= 1);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (contx, constrains) {
        final imageWidth = constrains.maxWidth - 75;
        return SizedBox(
            child: widget.screenType == ScreenType.desktop
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: imageWidth < 723 ? imageWidth : 723,
                        height: 453,
                        child: Image.network(
                          widget.images[_selectedIndex],
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(
                              widget.images.length,
                              (index) => _GalleryImageItem(
                                    image: widget.images[index],
                                    isSelected: index == _selectedIndex,
                                    onPressed: () {
                                      _selectImage(index);
                                    },
                                  ))),
                    ],
                  )
                : Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              widget.images.length,
                              (index) => _GalleryImageItem(
                                    image: widget.images[index],
                                    isSelected: index == _selectedIndex,
                                    onPressed: () {
                                      _selectImage(index);
                                    },
                                  ))),
                      SizedBox(
                        height: 550,
                        child: Image.network(
                          widget.images[_selectedIndex],
                        ),
                      ),
                    ].reversed.toList(),
                  ));
      },
    );
  }

  void _selectImage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class _GalleryImageItem extends StatelessWidget {
  const _GalleryImageItem(
      {required this.image, required this.isSelected, required this.onPressed});
  final String image;
  final bool isSelected;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    print('width: $width');
    double boxWidth = 75;
    double boxHeight = 75;
    if (width < 1150) {
      boxWidth = 70;
      boxHeight = 70;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              border: isSelected
                  ? Border.all(color: AppColors.grey, width: 2)
                  : null),
          width: boxWidth,
          height: boxHeight,
          child: Image.network(
            image,
          ),
        ),
      ),
    );
  }
}
