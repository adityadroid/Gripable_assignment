import 'package:flutter/material.dart';
import 'package:gripable_assignment/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

class AppBottomLoader extends StatelessWidget {
  const AppBottomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Lottie.asset(
          Assets.animations.loadingAnimation,
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}
