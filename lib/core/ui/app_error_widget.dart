import 'package:flutter/material.dart';
import 'package:gripable_assignment/core/l10n/l10n.dart';
import 'package:gripable_assignment/core/utils/context_extensions.dart';
import 'package:gripable_assignment/gen/assets.gen.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key});

  @override
  Widget build(BuildContext context) => Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          Assets.images.error.path,
          width: 250,
        ),

        Text(
          context.l10n.globalErrorMessage,
          style: context.textTheme.titleLarge,
        ),
      ],
    ),
  );
}
