import 'package:flutter/material.dart';
class AppBottomLoader extends StatelessWidget {
  const AppBottomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(8),
      child:  Center(
        child: SizedBox(
          height: 24,
          width: 24,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
