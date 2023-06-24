import 'package:flutter/material.dart';
import 'package:basic_app/imgBtn.dart';

class ColorContainer extends StatelessWidget {
  const ColorContainer(this.startAlign, this.endAlign, this.colors,
      {super.key});

  final Alignment startAlign;
  final Alignment endAlign;
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlign,
          end: endAlign,
        ),
      ),
      child: const Center(
        child: ImageButton(),
      ),
    );
  }
}
