import 'package:flutter/material.dart';

class TextButtonLayers extends StatelessWidget {
  const TextButtonLayers({super.key, required this.containerHeight});

  final double containerHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.black12),
    );
  }
}
