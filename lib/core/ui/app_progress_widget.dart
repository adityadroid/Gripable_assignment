import 'package:flutter/material.dart';

class AppProgressWidget extends StatelessWidget {
  const AppProgressWidget({super.key});

  @override
  Widget build(BuildContext context) => const Center(
        child: CircularProgressIndicator(),
      );
}
