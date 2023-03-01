import 'package:flutter/material.dart';

class PaddingAll {
  static EdgeInsets get xy12 => const EdgeInsets.all(12);

  static EdgeInsets get x12y20 => const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      );

  static EdgeInsets get x12y40 => const EdgeInsets.symmetric(horizontal: 12, vertical: 40);
}
