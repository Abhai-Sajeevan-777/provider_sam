import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sam/controller/color_controller.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenstate = context.watch<ColorController>();
    return Scaffold(
      backgroundColor: screenstate.scbg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          screenstate.colors.length,
          (index) => InkWell(
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
            onTap: () {
              screenstate.changeColor(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: screenstate.colors[index],
                  border: Border.all(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
