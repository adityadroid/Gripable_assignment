import 'package:flutter/material.dart';
import 'package:gripable_assignment/core/l10n/l10n.dart';
import 'package:gripable_assignment/core/utils/context_extensions.dart';
import 'package:gripable_assignment/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              Assets.animations.errorAnimation,
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Text(
                context.l10n.globalErrorMessage,
                style: context.textTheme.titleLarge!.copyWith(
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      );
}
