import 'package:flutter/material.dart';
import 'package:gripable_assignment/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

class AppProgressWidget extends StatelessWidget {
  const AppProgressWidget({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Lottie.asset(Assets.animations.loadingAnimation, width: 100),
      );
}
