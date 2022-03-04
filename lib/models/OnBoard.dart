import 'package:flutter/material.dart';

class OnBoard {
  late final String image;
  late final String header;
  late final String subHeader;
  late final Color primary;
  late final Color secondary;
  late final String buttonText;
  late final Color gradientOne;
  late final Color gradientTwo;

  OnBoard(
      {required this.image,
      required this.header,
      required this.subHeader,
      required this.primary,
      required this.secondary,
      required this.buttonText,
      required this.gradientOne,
      required this.gradientTwo});
}
