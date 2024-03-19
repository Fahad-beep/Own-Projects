import 'package:flutter/material.dart';

Image showImage(
    {required String path,
    double width = 0,
    double height = 0,
    required Alignment alignment}) {
  return Image(
    width: width,
    height: height,
    alignment: alignment,
    image: AssetImage(path),
  );
}
