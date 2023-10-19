import 'package:flutter/material.dart';
import 'package:gripable_assignment/core/l10n/l10n.dart';
import 'package:gripable_assignment/core/utils/context_extensions.dart';

class AppEmptyDataWidget extends StatelessWidget {
  const AppEmptyDataWidget({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          context.l10n.noDataMessage,
          style: context.textTheme.titleLarge!.copyWith(
            color: Colors.black87,
          ),
        ),
      );
}
