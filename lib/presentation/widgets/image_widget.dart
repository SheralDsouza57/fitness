import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    this.width,
    this.height,
    required this.image,
    this.fit,
  });
  final double? width;
  final double? height;
  final String image;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
